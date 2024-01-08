# Deploy On Targets

For a new target there are several things that must be copied to it in order for it to work:

- Compiled code: the compiled code generated by LabVIEW that goes into the `/c/ni-rt/startup` directory.
- The configuration files: the configuration files are stored in the `/c/Configuration` directory, here some are then
inside other directories to make things more clear.
- Libraries: the libraries that are used by the code are stored in `/usr/local/lib`.

The next sections explain the different configuration files that must be placed in each PXI for it to work properly.