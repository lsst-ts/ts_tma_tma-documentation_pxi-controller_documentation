## Useful Tools

When configuring a PXI from scratch, there are several tools and shortcuts that could be implemented to simplify routine
procedures or debugging these are:

### Adding an alias to read the log messages the `rtexe` app logs during boot

- SSH into the PXI, using the *admin* user
- Open the `.bashrc` file with `vi` -> `$ vi .bashrc`
- Add the following line to the *admin* user `.bashrc` file.
  
  ```bash
  alias labviewmessages="cat /var/log/messages | grep LabVIEW_Custom"
  ```

- Save the file and exit
- Reload the `.bashrc` -> `$ source .bashrc`

### Loading the `rtexe` onto the target PXI

- Download the built version
- Extract the `*.zip` file
- Copy the contents of the `startup` or `bin` folders into the `/c/ni-rt/startup/` folder from the target PXI. Example:

  ```bash
  $ cd C:\Builds\MainAxesPXI\MainAxisControl\c\ni-rt\
  $ ls
  startup
  $ scp -r startup/* admin@<target IP or hostname>:/c/ni-rt/startup/
  (a list of copied files appear)
  ```

  > For builds with the `rtexe` inside a `bin` folder the command from the example changes to
  > `scp -r bin/* admin@<target IP or hostname>:/c/ni-rt/startup/`

### Making sure the PXI will boot from the installed `rtexe`

For the PXI to boot from the provided `rtexe` built app, there is a configuration setting from the NI real time environment
that must be set. This setting is located inside `/etc/natinst/share/lvrt.conf` for NI Linux RT targets. Here the following
sections must be set:

- `RTTarget.ApplicationPath=/c/ni-rt/startup/startup.rtexe`
- `RTTarget.LaunchAppAtBoot=True`
