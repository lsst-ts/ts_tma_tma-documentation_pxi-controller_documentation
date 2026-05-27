#!/bin/bash
set -euo pipefail

# check that the IP is provided
if [ -z "$1" ]; then
    echo "Error: IP address argument is required." >&2
    echo "Usage: $0 <ip-address>" >&2
    exit 1
fi

# Create an SSH and add it to the remote PXI to make the script work without constantly asking for the password

REMOTE_PXI_TO_COPY_FROM="$1"

echo "Copying config from IP: $REMOTE_PXI_TO_COPY_FROM"

echo "Install NTP ..."
opkg install ntp ntp-tickadj ntp-utils
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/etc/ntp.conf /etc/ntp.conf

echo "Add settai tool ..."
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/usr/local/bin/settai /usr/local/bin/settai
cat <<'EOF' >> "/etc/init.d/settai"
!#/bin/sh

# execute Dave tool to set the leap second to the desired value

/usr/local/bin/settai 37
EOF

chmod a+x /etc/init.d/settai
ln -s /etc/rc5.d/../init.d/settai /etc/rc5.d/S30settai


echo "Copy libs ..."
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/usr/local/lib/* /usr/local/lib/
ln -s /usr/local/lib/ /c/ni-rt/system

echo "Add bashrc aliases ..."
cat <<'EOF' >> "/home/admin/.bashrc"
alias labviewmessages="cat /var/log/messages | grep LabVIEW_Custom" 
alias ll="ls -l" 
alias gotonirtlogs="cd /var/local/natinst/log" 
alias vim="vi"
EOF

echo "Add file history deletion script ..."
mkdir -p /home/admin/file-history-deletion
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/home/admin/file-history-deletion/* /home/admin/file-history-deletion/
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/etc/cron.d/teknikerRemoveOldLogs /etc/cron.d/
mkdir -p /home/lvuser/log
chown -R lvuser:ni /home/lvuser/log
ln -s /home/lvuser/log/ /home/admin/logs

echo "Add motd ..."
scp admin@"$REMOTE_PXI_TO_COPY_FROM":/etc/motd /etc/motd
cat <<EOF >> "/etc/motd"

Config copied from $REMOTE_PXI_TO_COPY_FROM
EOF

echo "Add config files ..."
mkdir -p /c/Configuration/
scp -r admin@"$REMOTE_PXI_TO_COPY_FROM":/c/Configuration/ /c/
chown -R lvuser:ni /c/Configuration/

echo "Rebooting to apply changes"
reboot
