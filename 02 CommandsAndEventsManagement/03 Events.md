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
        },
        "DeployablePlatform": {
            "DeployablePlatform1": {
                "ErrorTimeoutMargin": 0.00,
                "IdString": "This is the identifier for the deployable platform in string format.",
                "MaxPlatformPosition1": 0.00,
                "MaxPlatformPosition2": 0.00,
                "MinPlatformPosition1": 0.00,
                "MinPlatformPosition2": 0.00,
                "MotorIdPlatform1": 0.00,
                "MotorIdPlatform2": 0.00,
                "PlatformAcceleration": 0.00,
                "PlatformDeceleration": 0.00,
                "PlatformJerk": 0.00,
                "PlatformMaxCriticalVelocity": 0.00,
                "PlatformMaxVelocity": 0.00,
                "PlatformVelocity": 0.00,
                "Timeoutlockextension": 0.00,
                "Timeoutmovemargin": 0.00,
                "Timeoutpoweroff": 0.00,
                "Timeoutpoweron": 0.00,
                "Timeoutreset": 0.00,
                "Timeoutstop": 0.00,
                "Enableextensionlockguard": false,
                "MaxElevationAngle": 0.00,
                "MinElevationAngle": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            },
            "DeployablePlatform2": {
                "ErrorTimeoutMargin": 0.00,
                "IdString": "This is the identifier for the deployable platform in string format.",
                "MaxPlatformPosition1": 0.00,
                "MaxPlatformPosition2": 0.00,
                "MinPlatformPosition1": 0.00,
                "MinPlatformPosition2": 0.00,
                "MotorIdPlatform1": 0.00,
                "MotorIdPlatform2": 0.00,
                "PlatformAcceleration": 0.00,
                "PlatformDeceleration": 0.00,
                "PlatformJerk": 0.00,
                "PlatformMaxCriticalVelocity": 0.00,
                "PlatformMaxVelocity": 0.00,
                "PlatformVelocity": 0.00,
                "Timeoutlockextension": 0.00,
                "Timeoutmovemargin": 0.00,
                "Timeoutpoweroff": 0.00,
                "Timeoutpoweron": 0.00,
                "Timeoutreset": 0.00,
                "Timeoutstop": 0.00,
                "Enableextensionlockguard": false,
                "MaxElevationAngle": 0.00,
                "MinElevationAngle": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source."
            }
        },
        "EncoderSystem": {
            "Head1": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head2": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head3": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head4": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head5": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head6": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head7": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            },
            "Head8": {
                "AzimuthCriticalActiveHeads": 0.00,
                "AzimuthHeadsReferenceThreshold[i.u]": 0.00,
                "AzimuthTapeLineCount": 0.00,
                "AzimuthTelescopeOffset": 0.00,
                "CheckUpdTimeout": 0.00,
                "CmdTimeoutClearErrors": 0.00,
                "CmdTimeoutClearHeadsErrors": 0.00,
                "CmdTimeoutPowerOff": 0.00,
                "CmdTimeoutPowerOn": 0.00,
                "CmdTimeoutReboot": 0.00,
                "CmdTimeoutReferenceOff": 0.00,
                "CmdTimeoutReferenceOn": 0.00,
                "CmdTimeoutRelativeOffset": 0.00,
                "EibConfigFilePath": "The file path in PXI to get the EIB configuration. This file is Heidenhain developed file",
                "ElevationCriticalActiveHeads": 0.00,
                "ElevationHeadsReferenceThreshold[i.u]": 0.00,
                "ElevationTapeLineCount": 0.00,
                "ElevationTelescopeOffset": 0.00,
                "FpgaClockRate": 0.00,
                "LoggingIp": "IP for logging errors. The errors found by EIB will be sent to this port",
                "SyncTriggerOffset": 0.00,
                "SyncTriggerOnTime": 0.00,
                "UdpReadingTimeout": 0.00,
                "WaitAfterReset": 0.00,
                "AzimuthAxis": false,
                "EibInputName": "Input name of the head definition in the EIB",
                "HeadName": "Name of the head according to Empersarios naming",
                "NsvLinkid": 0.00,
                "PositionGain": 0.00,
                "PositionOffset": 0.00
            }
        },
        "LockingPins": {
            "LockingPin1": {
                "Elevationposninetyminus": 0.00,
                "Elevationposninetyplus": 0.00,
                "Elevationposzerominus": 0.00,
                "Elevationposzeroplus": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Defaultacceleration": 0.00,
                "Defaultjerk": 0.00,
                "Defaultspeed": 0.00,
                "Freeposition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "Lockposition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "Motorid": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "ResettransTimeout": 0.00,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Testposition": 0.00
            },
            "LockingPin2": {
                "Elevationposninetyminus": 0.00,
                "Elevationposninetyplus": 0.00,
                "Elevationposzerominus": 0.00,
                "Elevationposzeroplus": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Defaultacceleration": 0.00,
                "Defaultjerk": 0.00,
                "Defaultspeed": 0.00,
                "Freeposition": 0.00,
                "IdString": "This is the identifier for the cover in string format.",
                "Lockposition": 0.00,
                "MaxCriticalSpeed": 0.00,
                "MaxPosition": 0.00,
                "MaxSpeed": 0.00,
                "MinPosition": 0.00,
                "Motorid": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "ResettransTimeout": 0.00,
                "SpeedLimit": 0.00,
                "StoptransTimeout": 0.00,
                "Testposition": 0.00
            }
        },
        "MainAxis": {
            "Azimuth": {
                "AllowRelativeMovements": false,
                "CommandRelativeMovements": false,
                "ControlAccelerationFeedforwardGain": 0.00,
                "ControlDampingActive": false,
                "ControlDampingXDirectionGain": 0.00,
                "ControlDampingYDirectionGain": 0.00,
                "ControlInertia": 0.00,
                "ControlIntegralDisabled": false,
                "ControlKp(speedErrorGain)": 0.00,
                "ControlKv(positionErrorGain)": 0.00,
                "ControlMaximunTorqueVariation": 0.00,
                "ControlSpeedFeedforwardGain": 0.00,
                "ControlTi(integralTime)": 0.00,
                "EuiDefaultAcceleration": 0.00,
                "EuiDefaultJerk": 0.00,
                "EuiDefaultVelocity": 0.00,
                "EuiMaxAcceleration": 0.00,
                "EuiMaxJerk": 0.00,
                "EuiMaxVelocity": 0.00,
                "HhdDefaultAcceleration": 0.00,
                "HhdDefaultJerk": 0.00,
                "HhdDefaultVelocity": 0.00,
                "HhdMaxAcceleration": 0.00,
                "HhdMaxJerk": 0.00,
                "HhdMaxVelocity": 0.00,
                "HommingAcceleration": 0.00,
                "HommingJerk": 0.00,
                "HommingSpeed": 0.00,
                "HommingStartInPositiveDirection": false,
                "InPositionMargin": 0.00,
                "LimitsActiveDrives": 0.00,
                "LimitsAzcwCriticalDeviationValue": 0.00,
                "LimitsAzcwDeviationEnable": false,
                "LimitsAzcwMaximumDeviationValue": 0.00,
                "LimitsFollowingErrorEnable": false,
                "LimitsFollowingErrorValue": 0.00,
                "LimitsMaxPositionEnable": false,
                "LimitsMaxPositionValue": 0.00,
                "LimitsMinPositionEnable": false,
                "LimitsMinPositionValue": 0.00,
                "LimitsNegativeAdjustableSoftwareLimitEnable": false,
                "LimitsNegativeAdjustableSoftwareLimitValue": 0.00,
                "LimitsNegativeLimitSwitchEnable": false,
                "LimitsNegativeOperationalLimitSwitchEnable": false,
                "LimitsNegativeSoftwareLimitEnable": false,
                "LimitsNegativeSoftwareLimitValue": 0.00,
                "LimitsOverspeedEnable": false,
                "LimitsOverspeedValue": 0.00,
                "LimitsOverspeedWarningValue": 0.00,
                "LimitsPositiveAdjustableSoftwareLimitEnable": false,
                "LimitsPositiveAdjustableSoftwareLimitValue": 0.00,
                "LimitsPositiveLimitSwitchEnable": false,
                "LimitsPositiveOperationalLimitSwitchEnable": false,
                "LimitsPositiveSoftwareLimitEnable": false,
                "LimitsPositiveSoftwareLimitValue": 0.00,
                "OverrideDefaultAcceleration": 0.00,
                "OverrideDefaultJerk": 0.00,
                "OverrideDefaultVelocity": 0.00,
                "OverrideMaxAcceleration": 0.00,
                "OverrideMaxJerk": 0.00,
                "OverrideMaxVelocity": 0.00,
                "SoftmotionErrorStopAcceleration": 0.00,
                "SoftmotionErrorStopJerk": 0.00,
                "SoftmotionInPositionMargin": 0.00,
                "SoftmotionMaximumTorquePerDrive": 0.00,
                "SoftmotionMinimunDrivesForNoFault": 0.00,
                "SoftmotionNoReceivedDataCounterAlarmValue": 0.00,
                "SoftmotionNoReceivedDataCounterWarningValue": 0.00,
                "SoftmotionNumberOfElectricTurns": 0.00,
                "SoftmotionSpeedFromPosition": false,
                "SoftmotionTrackingMarginAcceleration": 0.00,
                "SoftmotionTrackingMarginJerk": 0.00,
                "SoftmotionTrackingMarginSpeed": 0.00,
                "SoftmotionTrackingMaxAcceleration": 0.00,
                "SoftmotionTrackingMaxJerk": 0.00,
                "SoftmotionTrackingMaxSpeed": 0.00,
                "StabilizationTime": 0.00,
                "SubsystemPath": "Defines the subsystem path when an error must be transmitted",
                "TcsDefaultAcceleration": 0.00,
                "TcsDefaultJerk": 0.00,
                "TcsDefaultVelocity": 0.00,
                "TcsMaxAcceleration": 0.00,
                "TcsMaxJerk": 0.00,
                "TcsMaxVelocity": 0.00,
                "TimeoutForAckCw": 0.00,
                "TimeoutForAckEib": 0.00,
                "TimeoutForAxisDisable": 0.00,
                "TimeoutForAxisEnable": 0.00,
                "TimeoutForBrakeEngage": 0.00,
                "TimeoutForBrakeRelease": 0.00,
                "TimeoutForCableWrapPowerOff": 0.00,
                "TimeoutForCableWrapPowerOn": 0.00,
                "TimeoutForEnabletracking": 0.00,
                "TimeoutForFaultStop": 0.00,
                "TimeoutForHomming": 0.00,
                "TimeoutForPowerOff": 0.00,
                "TimeoutForPowerOn": 0.00,
                "TimeoutForReset": 0.00,
                "TimeoutForResetAxis": 0.00,
                "TimeoutForStop": 0.00,
                "TimeoutForStopInHoming": 0.00,
                "TimeoutMoveMargin": 0.00,
                "TrakingConsecutiveTrackingCommandTimeout": 0.00,
                "TrakingFirstTrackingCommandTimeout": 0.00,
                "TrakingTimeOffset": 0.00
            },
            "Elevation": {
                "AllowRelativeMovements": false,
                "CommandRelativeMovements": false,
                "ControlAccelerationFeedforwardGain": 0.00,
                "ControlDampingActive": false,
                "ControlDampingXDirectionGain": 0.00,
                "ControlDampingYDirectionGain": 0.00,
                "ControlInertia": 0.00,
                "ControlIntegralDisabled": false,
                "ControlKp(speedErrorGain)": 0.00,
                "ControlKv(positionErrorGain)": 0.00,
                "ControlMaximunTorqueVariation": 0.00,
                "ControlSpeedFeedforwardGain": 0.00,
                "ControlTi(integralTime)": 0.00,
                "EuiDefaultAcceleration": 0.00,
                "EuiDefaultJerk": 0.00,
                "EuiDefaultVelocity": 0.00,
                "EuiMaxAcceleration": 0.00,
                "EuiMaxJerk": 0.00,
                "EuiMaxVelocity": 0.00,
                "HhdDefaultAcceleration": 0.00,
                "HhdDefaultJerk": 0.00,
                "HhdDefaultVelocity": 0.00,
                "HhdMaxAcceleration": 0.00,
                "HhdMaxJerk": 0.00,
                "HhdMaxVelocity": 0.00,
                "HommingAcceleration": 0.00,
                "HommingJerk": 0.00,
                "HommingSpeed": 0.00,
                "HommingStartInPositiveDirection": false,
                "InPositionMargin": 0.00,
                "LimitsActiveDrives": 0.00,
                "LimitsFollowingErrorEnable": false,
                "LimitsFollowingErrorValue": 0.00,
                "LimitsMaxPositionEnable": false,
                "LimitsMaxPositionValue": 0.00,
                "LimitsMinPositionEnable": false,
                "LimitsMinPositionValue": 0.00,
                "LimitsNegativeAdjustableSoftwareLimitEnable": false,
                "LimitsNegativeAdjustableSoftwareLimitValue": 0.00,
                "LimitsNegativeLimitSwitchEnable": false,
                "LimitsNegativeOperationalLimitSwitchEnable": false,
                "LimitsNegativeSoftwareLimitEnable": false,
                "LimitsNegativeSoftwareLimitValue": 0.00,
                "LimitsOverspeedEnable": false,
                "LimitsOverspeedValue": 0.00,
                "LimitsOverspeedWarningValue": 0.00,
                "LimitsPositiveAdjustableSoftwareLimitEnable": false,
                "LimitsPositiveAdjustableSoftwareLimitValue": 0.00,
                "LimitsPositiveLimitSwitchEnable": false,
                "LimitsPositiveOperationalLimitSwitchEnable": false,
                "LimitsPositiveSoftwareLimitEnable": false,
                "LimitsPositiveSoftwareLimitValue": 0.00,
                "OverrideDefaultAcceleration": 0.00,
                "OverrideDefaultJerk": 0.00,
                "OverrideDefaultVelocity": 0.00,
                "OverrideMaxAcceleration": 0.00,
                "OverrideMaxJerk": 0.00,
                "OverrideMaxVelocity": 0.00,
                "SoftmotionErrorStopAcceleration": 0.00,
                "SoftmotionErrorStopJerk": 0.00,
                "SoftmotionInPositionMargin": 0.00,
                "SoftmotionMaximumTorquePerDrive": 0.00,
                "SoftmotionMinimunDrivesForNoFault": 0.00,
                "SoftmotionNoReceivedDataCounterAlarmValue": 0.00,
                "SoftmotionNoReceivedDataCounterWarningValue": 0.00,
                "SoftmotionNumberOfElectricTurns": 0.00,
                "SoftmotionSpeedFromPosition": false,
                "SoftmotionTrackingMarginAcceleration": 0.00,
                "SoftmotionTrackingMarginJerk": 0.00,
                "SoftmotionTrackingMarginSpeed": 0.00,
                "SoftmotionTrackingMaxAcceleration": 0.00,
                "SoftmotionTrackingMaxJerk": 0.00,
                "SoftmotionTrackingMaxSpeed": 0.00,
                "StabilizationTime": 0.00,
                "SubsystemPath": "Defines the subsystem path when an error must be transmitted",
                "TcsDefaultAcceleration": 0.00,
                "TcsDefaultJerk": 0.00,
                "TcsDefaultVelocity": 0.00,
                "TcsMaxAcceleration": 0.00,
                "TcsMaxJerk": 0.00,
                "TcsMaxVelocity": 0.00,
                "TimeoutForAckCw": 0.00,
                "TimeoutForAckEib": 0.00,
                "TimeoutForAxisDisable": 0.00,
                "TimeoutForAxisEnable": 0.00,
                "TimeoutForBrakeEngage": 0.00,
                "TimeoutForBrakeRelease": 0.00,
                "TimeoutForCableWrapPowerOff": 0.00,
                "TimeoutForCableWrapPowerOn": 0.00,
                "TimeoutForEnabletracking": 0.00,
                "TimeoutForFaultStop": 0.00,
                "TimeoutForHomming": 0.00,
                "TimeoutForPowerOff": 0.00,
                "TimeoutForPowerOn": 0.00,
                "TimeoutForReset": 0.00,
                "TimeoutForResetAxis": 0.00,
                "TimeoutForStop": 0.00,
                "TimeoutForStopInHoming": 0.00,
                "TimeoutMoveMargin": 0.00,
                "TrakingConsecutiveTrackingCommandTimeout": 0.00,
                "TrakingFirstTrackingCommandTimeout": 0.00,
                "TrakingTimeOffset": 0.00
            }
        },
        "MainAxisSoftMotion": {
            "Azimuth": {},
            "Elevation": {}
        },
        "MainCabinetTemperature": {
            "MainCabinet": {
                "CriticalHighCabinetTemperature": 0.00,
                "CriticalLowCabinetTemperature": 0.00,
                "Exitsetpoint": 0.00,
                "HighCabinetTemperature": 0.00,
                "HighSurfaceTemperature": 0.00,
                "IdString": "",
                "LowCabinetTemperature": 0.00,
                "LowSurfaceTemperature": 0.00,
                "LowerLimitHysteresisRelative": 0.00,
                "MaximumSetpointTemperature": 0.00,
                "MinimumSetpointTemperature": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "UpperLimitHysteresisRelative": 0.00
            }
        },
        "MainPowerSupply": {
            "MainPowerSupply": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "CwPowerOff": 0.00,
                "CwPowerOn": 0.00,
                "CwReset": 0.00,
                "Maxcurrent": 0.00,
                "Maxcurrentwarning": 0.00,
                "Minvoltage": 0.00,
                "Minvoltagewarning": 0.00,
                "PoweringTimeOut": 0.00,
                "ResetingTime": 0.00,
                "WaitPowerOffInFault": 0.00
            }
        },
        "MirrorCover": {
            "MC1": {
                "Minelevationposition": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "WaittransTimeout": 0.00,
                "CriticalMaxMotorVelocity": 0.00,
                "DeployedPosition": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "Isontop": false,
                "JogSpeed": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Openorder": false,
                "Resettingtime": 0.00,
                "RetractedPosition": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00
            },
            "MC2": {
                "Minelevationposition": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "WaittransTimeout": 0.00,
                "CriticalMaxMotorVelocity": 0.00,
                "DeployedPosition": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "Isontop": false,
                "JogSpeed": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Openorder": false,
                "Resettingtime": 0.00,
                "RetractedPosition": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00
            },
            "MC3": {
                "Minelevationposition": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "WaittransTimeout": 0.00,
                "CriticalMaxMotorVelocity": 0.00,
                "DeployedPosition": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "Isontop": false,
                "JogSpeed": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Openorder": false,
                "Resettingtime": 0.00,
                "RetractedPosition": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00
            },
            "MC4": {
                "Minelevationposition": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "WaittransTimeout": 0.00,
                "CriticalMaxMotorVelocity": 0.00,
                "DeployedPosition": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "Isontop": false,
                "JogSpeed": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Openorder": false,
                "Resettingtime": 0.00,
                "RetractedPosition": 0.00,
                "StoptransTimeout": 0.00,
                "Waitafterreset": 0.00
            }
        },
        "MirrorCoverLocks": {
            "MCL1": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "CriticalMaxMotorVelocity": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "JogSpeed": 0.00,
                "LockedPosition": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "StoptransTimeout": 0.00,
                "UnlockedPosition": 0.00,
                "Waitafterreset": 0.00
            },
            "MCL2": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "CriticalMaxMotorVelocity": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "JogSpeed": 0.00,
                "LockedPosition": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "StoptransTimeout": 0.00,
                "UnlockedPosition": 0.00,
                "Waitafterreset": 0.00
            },
            "MCL3": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "CriticalMaxMotorVelocity": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "JogSpeed": 0.00,
                "LockedPosition": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "StoptransTimeout": 0.00,
                "UnlockedPosition": 0.00,
                "Waitafterreset": 0.00
            },
            "MCL4": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "CriticalMaxMotorVelocity": 0.00,
                "ErrorId": "Error id of the current instance.",
                "IdString": "This is the identifier for the cover in string format.",
                "Idstringstocheck": "Here specify the ID Strings to search when guard executed. (separeted by \",\").",
                "Inrangemargin": 0.00,
                "JogSpeed": 0.00,
                "LockedPosition": 0.00,
                "MaxAnglePosition": 0.00,
                "MaxSpeed": 0.00,
                "MinAnglePosition": 0.00,
                "MotorAcceleration": 0.00,
                "MotorDeceleration": 0.00,
                "MotorId": 0.00,
                "MotorJerk": 0.00,
                "MotorMaxVelocity": 0.00,
                "MotorVelocity": 0.00,
                "MovevelocityTrnsTimeout": 0.00,
                "MoveTransTimemargin": 0.00,
                "OfftransTimeout": 0.00,
                "OntransTimeout": 0.00,
                "Resettingtime": 0.00,
                "StoptransTimeout": 0.00,
                "UnlockedPosition": 0.00,
                "Waitafterreset": 0.00
            }
        },
        "ModbusTemperatureControllers": {
            "TMA_AX_DZ_CBT_0001": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Tasksamplingtime": 0.00,
                "Commandtimeout": 0.00,
                "IdString": "This is the identifier for the cabinet in string format.",
                "Modbusserverconfigfilepath": "Path of the configuration file for the modbus server for this instance.",
                "Modbusservermappingfilepath": "Path of the mapping file for the modbus server for this instance.",
                "Resetvalue": 0.00,
                "Sendresetvalue": false,
                "Temperatureconversionread": 0.00,
                "Temperatureconversionwrite": 0.00,
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00
            },
            "TMA_AZ_PD_CBT_0001": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Tasksamplingtime": 0.00,
                "Commandtimeout": 0.00,
                "IdString": "This is the identifier for the cabinet in string format.",
                "Modbusserverconfigfilepath": "Path of the configuration file for the modbus server for this instance.",
                "Modbusservermappingfilepath": "Path of the mapping file for the modbus server for this instance.",
                "Resetvalue": 0.00,
                "Sendresetvalue": false,
                "Temperatureconversionread": 0.00,
                "Temperatureconversionwrite": 0.00,
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00
            },
            "TMA_AZ_PD_TRM_0001": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Tasksamplingtime": 0.00,
                "Commandtimeout": 0.00,
                "IdString": "This is the identifier for the cabinet in string format.",
                "Modbusserverconfigfilepath": "Path of the configuration file for the modbus server for this instance.",
                "Modbusservermappingfilepath": "Path of the mapping file for the modbus server for this instance.",
                "Resetvalue": 0.00,
                "Sendresetvalue": false,
                "Temperatureconversionread": 0.00,
                "Temperatureconversionwrite": 0.00,
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00
            },
            "TMA_EL_PD_CBT_0001": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Tasksamplingtime": 0.00,
                "Commandtimeout": 0.00,
                "IdString": "This is the identifier for the cabinet in string format.",
                "Modbusserverconfigfilepath": "Path of the configuration file for the modbus server for this instance.",
                "Modbusservermappingfilepath": "Path of the mapping file for the modbus server for this instance.",
                "Resetvalue": 0.00,
                "Sendresetvalue": false,
                "Temperatureconversionread": 0.00,
                "Temperatureconversionwrite": 0.00,
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00
            },
            "TMA_EL_PD_CBT_0002": {
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Tasksamplingtime": 0.00,
                "Commandtimeout": 0.00,
                "IdString": "This is the identifier for the cabinet in string format.",
                "Modbusserverconfigfilepath": "Path of the configuration file for the modbus server for this instance.",
                "Modbusservermappingfilepath": "Path of the mapping file for the modbus server for this instance.",
                "Resetvalue": 0.00,
                "Sendresetvalue": false,
                "Temperatureconversionread": 0.00,
                "Temperatureconversionwrite": 0.00,
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00
            }
        },
        "MotorThermalControl": {
            "AzimuthGroup1": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "AzimuthGroup2": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "AzimuthGroup3": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "AzimuthGroup4": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "ElevationGroup1": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "ElevationGroup2": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            },
            "Cabinet0101": {
                "Ambienttemperatureoffset": 0.00,
                "AutotuneControllerType": 0.00,
                "AutotuneStepAmplitude": 0.00,
                "AutotuneTimeConstantFator": 0.00,
                "ControlAlpha": 0.00,
                "ControlKp": 0.00,
                "ControlTd": 0.00,
                "ControlTi": 0.00,
                "IdString": "This is the identifier for the motor group in string format.",
                "PlantDelayTime": 0.00,
                "PlantProcessGain": 0.00,
                "PlantTimeConstant": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Temperaturedeviationalarm": 0.00,
                "Temperaturedeviationreference": 0.00,
                "Temperaturedeviationwarning": 0.00,
                "TimeoutPoweron": 0.00,
                "Valvedisabledaperture": 0.00,
                "Valveinpositiontimeout": 0.00,
                "Valveoutputhigh": 0.00,
                "Valveoutputlow": 0.00,
                "Valvevalidband": 0.00
            }
        },
        "OSS": {
            "OSS": {
                "Cooldownbearingstimeout": 0.00,
                "Cooldowntanktimeout": 0.00,
                "IdString": "",
                "Operationtransitiontimeout": 0.00,
                "Poweroffcoolingtimeout": 0.00,
                "Poweroffmainpumptimeout": 0.00,
                "Poweroffoilcirculationtimeout": 0.00,
                "Poweroncoolingtimeout": 0.00,
                "Poweronmainpumptimeout": 0.00,
                "Poweronoilcirculationtimeout": 0.00,
                "Resettingtime": 0.00,
                "Systemsource": "This is the identifier for the system used when publishing the Alarm source.",
                "Watchdogmaximumtime": 0.00
            }
        },
        "Safety": {
            "FaultIterationsSafetyNook": 0.00,
            "MonitoringRateMs": 0.00,
            "Overridecausestimeout": 0.00,
            "Resetcausesnumberofchecks": 0.00,
            "ResetcausestimebeforecheckingS": 0.00,
            "ResetcausestimebetweencheckingS": 0.00,
            "Resetcausestimeout": 0.00,
            "RtToSafetyClockMs": 0.00,
            "SafetyClockMs": 0.00
        },
        "TMAMainRT": {
            "Aftercomanderlaunchwait": 0.00,
            "Beforeazmotorthermallaunchwait": 0.00,
            "Beforeballaunchwait": 0.00,
            "Beforeboschlaunchwait": 0.00,
            "Beforeboschpowersupplylaunchwait": 0.00,
            "Beforecabinet0101launchwait": 0.00,
            "Beforecabinetlaunchwait": 0.00,
            "Beforeccwlaunchwait": 0.00,
            "Beforedplaunchwait": 0.00,
            "Beforeelmotorthermallaunchwait": 0.00,
            "Beforeiotelemetrypublicationlaunchwait": 0.00,
            "Beforelplaunchwait": 0.00,
            "Beforemainaxislaunchwait": 0.00,
            "Beforemclaunchwait": 0.00,
            "Beforemcllaunchwait": 0.00,
            "Beforemodbustempcontrollerslaunchwait": 0.00,
            "Beforempslaunchwait": 0.00,
            "Beforeosslaunchwait": 0.00,
            "Beforesafetylaunchwait": 0.00
        },
        "TopEndChiller": {
            "LocalremoteTimeout": 0.00,
            "PowerOn/offTimeout": 0.00,
            "ResetPulseTime": 0.00
        },
        "TrackingTrajectory": {
            "Averagesamplelength": 0.00,
            "AzimuthSlewThreshold": 0.00,
            "CommandQueueSize": 0.00,
            "ElevationSlewThreshold": 0.00,
            "FinalMotionBehaviour": 0.00,
            "Maxallowederror": 0.00,
            "NumberOfAxes": 0.00,
            "ReflexxessDllPath": "Path in the PXI where the reflexxess dll is stored",
            "SynchronizationBehaviour": 0.00,
            "TimeSetpointOffset": 0.00,
            "WaitForDataBeforeError": 0.00,
            "WaitingTimeForSetpointTime": 0.00,
            "WaitingTimeIfNoData": 0.00
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

#### limit  #TODO: write this event

This event reports the state of the limits. See example bellow:

``` plantuml
@startjson

@endjson
```

#### softLimitPosition  #TODO: write this event

This event reports the position of the software limits. See example bellow:

``` plantuml
@startjson

@endjson
```

#### azimuthToppleBlock

This event reports the state of the azimuth topple block. See example bellow:

``` plantuml
@startjson
{"id":304,"timestamp":3701054994.342060,"parameters":{"reverse":0,"forward":0}}
@endjson
```

- reverse is a boolean int (0 false 1 true).
- forward is a boolean int (0 false 1 true).

#### cameraCableWrapSwitches

This event reports the state of the camera cable wrap limits. See example bellow:

``` plantuml
@startjson
{"id":305,"timestamp":3701055342.073140,"parameters":{"negativeTravel":0,"positiveTravel":0,"interlock":0,"negativeDiviation":0,"positiveDiviation":0}}
@endjson
```

- negativeTravel is a boolean int (0 false 1 true).
- positiveTravel is a boolean int (0 false 1 true).
- interlock is a boolean int (0 false 1 true).
- negativeDiviation is a boolean int (0 false 1 true).
- positiveDiviation is a boolean int (0 false 1 true).
