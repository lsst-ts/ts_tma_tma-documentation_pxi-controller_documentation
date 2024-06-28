## Time synchronization

This section describes how to configure crontab tasks in the PXI.

### How to use crontab in the PXIs

For the PXIs the crontab tasks are not managed the usual way, with the `crontab -e` command. Instead a file must be
created at `/etc/cron.d` with the following format: `m  h  dom  mon  dow  user  command`.

### Project specific installation

This section contains the crontab tasks related to the TMA project.

#### Removing old log files

For debugging a custom log is used, by default this is saved at `/home/lvuser/log` but these are not managed by the
LabVIEW code once written, therefore a [custom script](https://github.com/lsst-ts/ts_tma_python_filehistorydeletion)
was created to remove the old log files. To use this script follow these steps:

- Copy the `main.py` file, from [this repo](https://github.com/lsst-ts/ts_tma_python_filehistorydeletion)
  to the desired location in the PXI, recommended location: `/home/admin/file-history-deletion`
- Create a file inside `/etc/cron.d` called `teknikerRemoveOldLogs`
- Add the following lines to the `teknikerRemoveOldLogs` file:

  ```bash
  # Remove old telemetry files
  # m  h  dom mon dow user       command
  0 9 * * * root python3 /home/admin/file-history-deletion/main.py
  ```

  > This will execute the script every day at 9 AM to remove the old files
