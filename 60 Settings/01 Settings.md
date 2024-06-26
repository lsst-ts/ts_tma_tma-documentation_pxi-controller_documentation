## MYSQLConnector class

The MYSQLConnector class is developed by Tekniker to allow connections to MySQL and MariaDB servers. It runs on
Windows and Linux in 32 and 64 bit modus using the C Connector DLL provided by MySQL. The only limit with this class
is the use on RT targets, it slows down the performance too much to be useful.

## GDataBase class

The GDataBase class is developed by Saphir to allow connections to MySQL and MariaDB from RT targets (PXI). It is solely
LabVIEW based and initializes its own TCP connection to side-step the need of a connector DLL.

## LSSTLayer class

The LSSTLayer is an universal (i.e. can run on Windows, Linux and LinuxRT) class, this gives an abstraction layer which
acts as an intermediary between the LabVIEW cluster data and the SQL statement syntax. Several top-level methods are used
to control the access to the database and adaptively format the SQL statements for the user.

### Troubleshooting

The LSSTLayer class can generate the following errors:

| Number | Name                | Description                                                               |
|--------|---------------------|---------------------------------------------------------------------------|
| 1901   | No cluster detected | The method expected a cluster input as a variant but did not receive one. |
| 1902   | Empty input string  | A required input string is empty.                                         |
| 1903   | Empty MySQL Object  | Open failed to initialize a valid connection.                             |

The class also throws errors generated by the MYSQLConnector class (used in the EUI) and the GDatabase class (used in
the PXIs).

## LSSTLayer_RT class

The LSSTLayer_RT is a specific class for RT (PXI), this class is just a wrapper over the LSSTLayer class to provide an
easier and faster interface with the settings from RT.
