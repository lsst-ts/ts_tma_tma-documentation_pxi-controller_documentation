## Command Sequences

### Power On

Since the UPD for the EIB is command for Azimuth and Elevation heads, the power on command sequence depends if the EIB is already powered on or not. For the first power on, there are more actions to do, because the EIB starts sending data. In the second power on the EIb is already on, and just a configuration of the second axis heads is carried on. 

For the firs power the sequence is shown in next figure

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"
database "Settings"

Commander -> "TMA-PXI" : Power on
"TMA-PXI" -> Settings : Read general settings
"TMA-PXI" -> Commander : Ack
"TMA-PXI" -> Settings : Update events
"TMA-PXI" -> SyncCRIO : Update FPGA data
"TMA-PXI" -> "AXES PXI" : Update UPD settings
"TMA-PXI" -> Settings : read head settings
"TMA-PXI" -> "AXES PXI" : Update head settings
"TMA-PXI" -> EIB : InitPositionValue
"TMA-PXI" -> "AXES PXI" : Start UPD loop
"TMA-PXI" -> EIB : Start UPD publication
"TMA-PXI" -> "TMA-PXI" : Check UPD working
"TMA-PXI" -> "TMA-PXI" : Start Event loop
"TMA-PXI" -> "TMA-PXI" : Update power status
"TMA-PXI" -> Commander : Done

@enduml
```

For the second power, the EIB is already sending data via UDP, so the configuration of the FPGA and EIB has no sense.

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"
database "Settings"

Commander -> "TMA-PXI" : Power on
"TMA-PXI" -> Commander : Ack
"TMA-PXI" -> EIB : InitPositionValue
"TMA-PXI" -> "TMA-PXI" : Check UPD working
"TMA-PXI" -> "TMA-PXI" : Update power status
"TMA-PXI" -> Commander : Done

@enduml
```

### Power off

Since the UDP is common for azimuth and elevation heads, the EIB will be powered off only if both axis are powered off. This is, if a power off is received for elevation and azimuth is still on, the EIB will not switched off and data will be received for all heads.

If power off is not required, because there is another axis still powered on

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : Power off
"TMA-PXI" -> Commander : Ack
"TMA-PXI" -> "AXES PXI" : Set reference not valid
"TMA-PXI" -> EIB : Stop reference
"TMA-PXI" -> EIB : Head reference status
"TMA-PXI" -> "TMA-PXI" : Update power status


@enduml
```
If the power of the EIB is possible, then the sequence is shown in next diagram.

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : Power off
"TMA-PXI" -> Commander : Ack
"TMA-PXI" -> "TMA-PXI" : Stop event loop
"TMA-PXI" -> "AXES PXI" : Stop UDP loop
"TMA-PXI" -> EIB : Stop UDP
"TMA-PXI" -> "TMA-PXI" : Check UPD
"TMA-PXI" -> "AXES PXI" : Set reference not valid
"TMA-PXI" -> EIB : Stop reference
"TMA-PXI" -> EIB : Head reference status
"TMA-PXI" -> "TMA-PXI" : Update power status

@enduml
```

### Start Reference

The reference search is the procedure to get the absolute position. The heads that fulfil this procedure without errors have a valid absolute position. The reference procedure is started in the home sequence of an axis.

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : start reference
"TMA-PXI" -> "TMA-PXI" : Check if reference is running
alt Reference running
    "TMA-PXI" -> Commander : No ack
else start with reference
    "TMA-PXI" -> Commander : Ack
    "TMA-PXI" -> "EIB" : Reference On
    loop Until completed or timeout
        "TMA-PXI" -> "EIB": Read Heads reference status
        "TMA-PXI" -> "TMA-PXI" : Check if reference running
        "TMA-PXI" -> "TMA-PXI" : Check if reference completed
        "TMA-PXI" -> "TMA-PXI" : Check timeout
    end
    "TMA-PXI" -> "TMA-PXI" : Calculate reference
    "TMA-PXI" -> "AXES PXI" : Send reference data
    "TMA-PXI" -> Commander : Done
    "TMA-PXI" -> "TMA-PXI" : Finish reference
end 
@enduml
```

### Stop Reference

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : stop reference
"TMA-PXI" -> Commander : ack
"TMA-PXI" -> "EIB" : Reference Off 
"TMA-PXI" -> "EIB": Read Heads reference status
"TMA-PXI" -> "TMA-PXI" : Finish reference
"TMA-PXI" -> Commander : Done
@enduml
```

### Clear Heads Errors

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : clear head errors
"TMA-PXI" -> Commander : ack
"TMA-PXI" -> "EIB" : Reset position errors 
"TMA-PXI" -> Commander : Done
@enduml
```

### Clear Errors

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : clear errors
"TMA-PXI" -> Commander : ack
"TMA-PXI" -> "EIB" : Reset position errors 
"TMA-PXI" -> "TMA-PXI" : Clear Alarms
"TMA-PXI" -> Commander : Done
@enduml
```

### Reboot EIB

This command reboots the EIB hardware. **Do no execute this command if it is not necessary**. **To execute this command Azimuth and elevation must be powered off**

```plantuml
@startuml

actor "Commander"
entity "TMA-PXI"
entity "AXES PXI"
entity "EIB"
entity "SyncCRIO"


Commander -> "TMA-PXI" : Reset EIB
"TMA-PXI" -> Commander : ack
"TMA-PXI" -> "TMA-PXI" : Stop event loop
"TMA-PXI" -> "AXES PXI" : Stop UDP loop
"TMA-PXI" -> "TMA-PXI" : Check UPD
"TMA-PXI" -> "TMA-PXI" : Finish reference
"TMA-PXI" -> "TMA-PXI" : Clear Alarms
"TMA-PXI" -> EIB : Reset
"TMA-PXI" -> EIB : Check reset
"TMA-PXI" -> EIB : Configure
"TMA-PXI" -> Commander : Done
@enduml
```