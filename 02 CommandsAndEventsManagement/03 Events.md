## Events

This component is the one sending events to the TMA operation manager. This is done using the TCP server component.

### Events list

All the events generated in the PXI can have an additional field defined as "commander" with the values -> "0": "None", "1": "TCS", "2": "EUI", "3": "HHD". This field is only used by the TMA operation manager to send the event only to that comander. If this field is not present the event is sent to all the commanders connected to the TMA operation manager.

#### warning

This event reports the occurred warnings. See example bellow:

``` plantuml
@startjson
{"id":10,"timestamp":0.000000,"parameters":{"name":"","subsystemId":0,"subsystemInstance":"","active":false,"code":0,"description":""}}
@endjson
```

- name is a string that contains the alarm name.
- subsystemId is an int that contains the id of the subsystem.
- subsystemInstance is an string that contains the instance name.
- active is a boolean that reports if the alarm is active.
- code an int for the alarm code.
- description is an string that contains the alarm description.

#### alarm

This event reports the occurred alarms. See example bellow:

``` plantuml
@startjson
{"id":11,"timestamp":0.000000,"parameters":{"name":"","subsystemId":0,"subsystemInstance":"","active":false,"latched":false,"code":0,"description":""}}
@endjson
```

- name is a string that contains the alarm name.
- subsystemId is an int that contains the id of the subsystem.
- subsystemInstance is an string that contains the instance name.
- active is a boolean that reports if the alarm is active.
- latched is a boolean that reports if the alarm is latched.
- code an int for the alarm code.
- description is an string that contains the alarm description.

#### commander

This event reports the actual comander. See example bellow:

``` plantuml
@startjson
{"id":20,"timestamp":3701058211.501903,"parameters":{"actualCommander":0}}
@endjson
```

- actualComander enum:

``` plantuml
@startjson
{"<color:blue><b>actualCommander": {"<b>id": "<b>value","0": "None", "1": "TCS", "2": "EUI", "3": "HHD"}}
@endjson
```

#### safetyInterlocks ## TODO: write this event

This event reports the status of the safety interlocks. See example bellow:

``` plantuml
@startjson

@endjson
```

#### detailedSettingsApplied

This is an event that reports the actual applied settings.

``` plantuml
@startjson
{
    "id": 40,
    "timestamp": 3697779303.717949,
    "parameters": {
        "Balancing": {
            "Balancing1": {
                "BalancePosition": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "FirstSidePosition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "LastSidePosition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxPositionLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinPositionLimit": 0.00,
                "MotorId": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "Slewthreshold": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            },
            "Balancing2": {
                "BalancePosition": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "FirstSidePosition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "LastSidePosition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxPositionLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinPositionLimit": 0.00,
                "MotorId": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "Slewthreshold": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            },
            "Balancing3": {
                "BalancePosition": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "FirstSidePosition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "LastSidePosition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxPositionLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinPositionLimit": 0.00,
                "MotorId": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "Slewthreshold": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            },
            "Balancing4": {
                "BalancePosition": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "FirstSidePosition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "LastSidePosition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxPositionLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinPositionLimit": 0.00,
                "MotorId": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "Slewthreshold": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            }
        },
        "BoschSystem": {
            "Address": "This is the IP address of the MLC.",
            "Changetoparking": false,
            "ParkingMotorId1": false,
            "ParkingMotorId10": false,
            "ParkingMotorId11": false,
            "ParkingMotorId12": false,
            "ParkingMotorId13": false,
            "ParkingMotorId14": false,
            "ParkingMotorId15": false,
            "ParkingMotorId16": false,
            "ParkingMotorId17": false,
            "ParkingMotorId18": false,
            "ParkingMotorId19": false,
            "ParkingMotorId2": false,
            "ParkingMotorId20": false,
            "ParkingMotorId21": false,
            "ParkingMotorId22": false,
            "ParkingMotorId3": false,
            "ParkingMotorId4": false,
            "ParkingMotorId5": false,
            "ParkingMotorId6": false,
            "ParkingMotorId7": false,
            "ParkingMotorId8": false,
            "ParkingMotorId9": false,
            "Password": "This is the password to connect to the MLC.",
            "User": "This is the user account to connect to the MLC."
        },
        "CW": {
            "ACW": {
                "AzimuthDeviation": 0.00,
                "AzimuthDeviationOverride": false,
                "CriticalAzimuthDeviation": 0.00,
                "CriticalSpeedLimit": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "ForceDriveSelection": false,
                "ForcedDrive": 0.00,
                "IdString1": "This is the identifier for the Motor 1 in string format.",
                "IdString2": "This is the identifier for the Motor 2 in string format.",
                "MaxAcceleration": 0.00,
                "MaxJerk": 0.00,
                "MaxPosition": 0.00,
                "MaxSoftwareLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinSoftwareLimit": 0.00,
                "Motor1Id": 0.00,
                "Motor2Id": 0.00,
                "MotorTimerFilePath": "Path for the file where using time of each motor will be saved",
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "PositionOffset": 0.00,
                "Resettingtime": 0.00,
                "RotationSense": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "TrackingAcceleration": 0.00,
                "TrackingJerk": 0.00,
                "TrackingQueueSize": 0.00,
                "TrackingSpeed": 0.00,
                "TrackingTimeOffset": 0.00,
                "TrackingWaitForDataBeforeError": 0.00,
                "TrackingWaitForFirstTrackSetpointError": 0.00,
                "TrackingWaitTimeForCheckSetpoint": 0.00,
                "TrackingWaitTimeIfNoDataInQueue": 0.00,
                "Waitafterreset": 0.00
            },
            "CCW": {
                "CameraDeviation": 0.00,
                "CameraDeviationOverride": false,
                "CriticalAzimuthDeviation": 0.00,
                "CriticalSpeedLimit": 0.00,
                "DefaultAcceleration": 0.00,
                "DefaultJerk": 0.00,
                "DefaultSpeed": 0.00,
                "ForceDriveSelection": false,
                "ForcedDrive": 0.00,
                "IdString1": "This is the identifier for the Motor 1 in string format.",
                "IdString2": "This is the identifier for the Motor 2 in string format.",
                "LimitSwitchOverride": false,
                "MaxAcceleration": 0.00,
                "MaxJerk": 0.00,
                "MaxPosition": 0.00,
                "MaxSoftwareLimit": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "MinSoftwareLimit": 0.00,
                "Motor1Id": 0.00,
                "Motor2Id": 0.00,
                "MotorTimerFilePath": "Path for the file where using time of each motor will be saved",
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "PositionOffset": 0.00,
                "Resettingtime": 0.00,
                "RotationSense": 0.00,
                "SoftwareLimitOverride": false,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "TrackingAcceleration": 0.00,
                "TrackingJerk": 0.00,
                "TrackingQueueSize": 0.00,
                "TrackingSpeed": 0.00,
                "TrackingTimeOffset": 0.00,
                "TrackingWaitForDataBeforeError": 0.00,
                "TrackingWaitForFirstTrackSetpointError": 0.00,
                "TrackingWaitTimeForCheckSetpoint": 0.00,
                "TrackingWaitTimeIfNoDataInQueue": 0.00,
                "Waitafterreset": 0.00
            }
        }
    }
}
@endjson
```

#### availableSettings

This event reports the available settings sets to be specified by the applySettings command. See example bellow:

``` plantuml
@startjson
{
    "id": 41,
    "timestamp": 3698128943.441208,
    "parameters": {
        "sets": [{
            "name": "AT_CCWAux",
            "description": "Set of settings for CCWAux automatic testing",
            "modifiedDate": "2019-11-07 16:30:35",
            "createdDate": "2019-11-07 08:20:18"
        }, {
            "name": "MT_CCWAux",
            "description": "Set of settings for CCWAux manual testing",
            "modifiedDate": "2019-11-07 16:31:03",
            "createdDate": "2019-11-07 16:31:03"
        }, {
            "name": "ATS",
            "description": "setting set for ATS",
            "modifiedDate": "2020-05-26 10:34:24",
            "createdDate": "2020-05-26 10:30:39"
        }, {
            "name": "Default",
            "description": "Default settings",
            "modifiedDate": "2020-05-26 10:31:51",
            "createdDate": "2020-05-26 10:31:51"
        }]
    }
}
@endjson
```

#### powerState

This event can have just one power state, for systems that have no subelements, or an additional field called "elementsPowerState" for systems that can have elements in different states. See examples bellow:

System with no subelements:

``` plantuml
@startjson
{"id":100,"timestamp":3700809100.303714,"parameters":{"system":0,"powerState":0}}
@endjson
```

System with 4 subelements:

``` plantuml
@startjson
{"id":100,"timestamp":3700810104.567383,"parameters":{"system":0,"powerState":0,"elementsPowerState":[0,0,0,0]}}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- powerState enum values:

``` plantuml
@startjson
{"<color:blue><b>powerState": {"<b>id": "<b>value","0": "OFF", "1": "ON", "2": "TURNING_ON", "3": "TURNING_OFF", "4": "FAULT"}}
@endjson
```

- elementsPowerState is an array of powerState enums.

#### motionState

This event publishes the motion state of Azimuth, Elevation and CameraCableWrap. See example bellow:

``` plantuml
@startjson
{"id":101,"timestamp":3700813075.739622,"parameters":{"axis":0,"motionState":0,"position":0.00000000}}
@endjson
```

- axis enum:

``` plantuml
@startjson
{"<color:blue><b>axis": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap"}}
@endjson
```

- motionState enum values:

``` plantuml
@startjson
{"<color:blue><b>motionState": {"<b>id": "<b>value","0": "STOPPING", "1": "STOPPED", "2": "MOVING_POINT_TO_POINT", "3": "JOGGING", "4": "TRACKING"}}
@endjson
```

- position is a float in degrees.

#### oilSupplySystemState

This event reports the state of the oil supply system. See example bellow:

``` plantuml
@startjson
{"id":102,"timestamp":3701053969.999932,"parameters":{"cooling":0,"oil":0,"mainPump":0}}
@endjson
```

- cooling enum values:

``` plantuml
@startjson
{"<color:blue><b>cooling": {"<b>id": "<b>value","0": "OFF", "1": "ON", "2": "TURNING_ON", "3": "TURNING_OFF", "4": "FAULT"}}
@endjson
```

- oil enum values:

``` plantuml
@startjson
{"<color:blue><b>oil": {"<b>id": "<b>value","0": "OFF", "1": "ON", "2": "TURNING_ON", "3": "TURNING_OFF", "4": "FAULT"}}
@endjson
```

- mainPump enum values:

``` plantuml
@startjson
{"<color:blue><b>mainPump": {"<b>id": "<b>value","0": "OFF", "1": "ON", "2": "TURNING_ON", "3": "TURNING_OFF", "4": "FAULT"}}
@endjson
```

#### chillerState

This event reports the state of the TopEndChiller, Azimuth Drives Thermal, Elevation Drives Thermal, AZ 0101 Cabinet and ModbusTemperatureControllers. See examples bellow:

For systems that have no subelements:

``` plantuml
@startjson
{"id":103,"timestamp":3701054317.787135,"parameters":{"system":0,"trackAmbient":0,"temperature":0.00}}
@endjson
```

For systems that have subelements:

``` plantuml
@startjson
{"id":103,"timestamp":3701054465.650976,"parameters":{"system":0,"trackAmbient":0,"temperature":0.00,"elementsChillerState":[{"trackAmbient":0,"temperature":0.00},{"trackAmbient":0,"temperature":0.00}]}}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- trackAmbient is a boolean int (0 false 1 true).
- temperature is a float in degree celsius.
- elementsChillerState is an array of chiller states that contains the status of each individual subelement.

#### motionControllerState

This event reports the state of the motion controllers for Azimuth, Elevation, CCW, Balancing, MirrorCover, MirrorCoverLocks, AzimuthCableWrap, LockingPins and DeployablePlatforms. See example bellow:

``` plantuml
@startjson
{"id":104,"timestamp":3701055564.832080,"parameters":{"system":0,"motionControllerState":[0,0,0]}}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- motionControllerState is an array of motionControllerState enum:

``` plantuml
@startjson
{"<color:blue><b>motionControllerState": {"<b>id": "<b>value","0": "OFF", "1": "ON", "2": "FAULT"}}
@endjson
```

#### inPosition

This event publishes when the Azimuth, Elevation and CameraCableWrap systems are in the desiered position. See example bellow:

``` plantuml
@startjson
{"id":200,"timestamp":3700813498.634085,"parameters":{"axis":0,"inPosition":0}}
@endjson
```

- axis enum:

``` plantuml
@startjson
{"<color:blue><b>axis": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap"}}
@endjson
```

- inPosition is a boolean int (0 false 1 true).

#### elevationLockingPinPosition

This event reports the position of the elevation locking pins. See example bellow:

``` plantuml
@startjson
{"id":201,"timestamp":3700813897.094651,"parameters":{"position":0,"elementsPosition":[0,0]}}
@endjson
```

- position enum values:

``` plantuml
@startjson
{"<color:blue><b>LockingPinPosition": {"<b>id": "<b>value","0": "AT_1", "1": "AT_2", "2": "AT_3", "3": "MOVING", "4": "MISMATCH"}}
@endjson
```

- elementsPosition is an array of positon enums.

#### mirrorCoverPositions

This event reports the position of the mirror cover. See example bellow:

``` plantuml
@startjson
{"id":202,"timestamp":3700814173.229395,"parameters":{"position":0,"elementsPosition":[0,0,0,0]}}
@endjson
```

- position enum values:

``` plantuml
@startjson
{"<color:blue><b>position": {"<b>id": "<b>value","0": "RETRACTED", "1": "DEPLOYED", "2": "RETRACTING", "3": "DEPLOYING", "4": "LOST"}}
@endjson
```

- elementsPosition is an array of positon enums.

#### mirrorCoverLockPositions

This event reports the position of the mirror cover locks. See example bellow:

``` plantuml
@startjson
{"id":203,"timestamp":3701053050.357125,"parameters":{"position":0,"elementsPosition":[0,0,0,0]}}
@endjson
```

- position enum values:

``` plantuml
@startjson
{"<color:blue><b>position": {"<b>id": "<b>value","0": "RETRACTED", "1": "DEPLOYED", "2": "RETRACTING", "3": "DEPLOYING", "4": "LOST"}}
@endjson
```

- elementsPosition is an array of positon enums.

#### deployablePlatformPositions

This event reports the position of the deployable platforms. See example bellow:

``` plantuml
@startjson
{"id":204,"timestamp":3701053793.306807,"parameters":{"position":0,"elementsPosition":[0,0]}}
@endjson
```

- position enum values:

``` plantuml
@startjson
{"<color:blue><b>position": {"<b>id": "<b>value","0": "RETRACTED", "1": "DEPLOYED", "2": "RETRACTING", "3": "DEPLOYING", "4": "LOST"}}
@endjson
```

- elementsPosition is an array of positon enums.

#### limits

This event reports the tripped status of the limits using a bit mask. See example bellow:

For systems that have no subelements:

``` plantuml
@startjson
{
      "id": 300,
      "timestamp": 3700547270.538420,
      "parameters": {
                      "system": 0,
                      "limits": [0]
      }
}
@endjson
```

For systems that have 4 subelements:

``` plantuml
@startjson
{
      "id": 300,
      "timestamp": 3700547270.538420,
      "parameters": {
                      "system": 0,
                      "limits": [0,0,0,0]
      }
}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- limits is an int array for the limits of each system element coded in a bit mask as follows:

  bit 0 -> software min

  bit 1 -> software max

  bit 2 -> travelSwitch min

  bit 3 -> travelSwitch max

  bit 4 -> safetySwitch min

  bit 5 -> safetySwitch max

  bit 6 -> adjustableSoftware min (special software limit for Azimuth and Elevation)

  bit 7 -> adjustableSoftware max (special software limit for Azimuth and Elevation)

  bit 8 -> operationalSwitch min (special limit switch for Elevation)

  bit 9 -> operationalSwitch max (special limit switch for Elevation)

#### specialLimits

This event reports the enabled/disabled status of the special limits for azimuth and elevation. See example bellow:

``` plantuml
@startjson
{
      "id": 301,
      "timestamp": 3700547270.538420,
      "parameters": {
                      "system": 0,
                      "adjustableSoftwareMax": 0,
                      "adjustableSoftwareMin": 0,
                      "adjustableSoftwareMaxPosition": 0,
                      "adjustableSoftwareMinPosition": 0,
                      "operationalSwitchMax": 0,
                      "operationalSwitchMin": 0
      }
}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- the rest are boolean int (0 disabled 1 enabled).

#### softLimitPosition

This event reports the position for the software limits, bits 0 and 1 of the limits event bit mask. See example bellow:

``` plantuml
@startjson
{
    "id": 302,
    "timestamp": 3700547270.538420,
    "parameters": {
        "system": 0,
        "max": 0.00,
        "min": 0.00
    }
}
@endjson
```

- system enum:

``` plantuml
@startjson
{"<color:blue><b>system": {"<b>id": "<b>value","0": "Azimuth", "1": "Elevation", "2": "CameraCableWrap", "3": "Balancing", "4": "MirrorCover", "5": "MirroCoverLocks", "6": "AzimuthCableWrap", "7": "LockingPins", "8": "DeployablePlatforms", "9": "OilSupplySystem", "10": "AzimuthDrivesThermal", "11": "ElevationDrivesThemal", "12": "AZ0101CabinetThemal", "13": "ModbusTemperatureControllers", "14": "MainCabinet", "15": "MainAxesPowerSupply"}}
@endjson
```

- max is a float that represents the maximum value of the software limit.
- min is a float that represents the minimum value of the software limit.

#### azimuthToppleBlock

This event reports the state of the azimuth topple block. See example bellow:

``` plantuml
@startjson
{"id":303,"timestamp":3701054994.342060,"parameters":{"reverse":0,"forward":0}}
@endjson
```

- reverse is a boolean int (0 false 1 true).
- forward is a boolean int (0 false 1 true).

#### cameraCableWrapSwitches

This event reports the state of the camera cable wrap limits. See example bellow:

``` plantuml
@startjson
{"id":304,"timestamp":3701055342.073140,"parameters":{"negativeTravel":0,"positiveTravel":0,"interlock":0,"negativeDiviation":0,"positiveDiviation":0}}
@endjson
```

- negativeTravel is a boolean int (0 false 1 true).
- positiveTravel is a boolean int (0 false 1 true).
- interlock is a boolean int (0 false 1 true).
- negativeDiviation is a boolean int (0 false 1 true).
- positiveDiviation is a boolean int (0 false 1 true).
