## State Machine

The behavior of the system is managed by the state machine. The state machine is represented in the diagram below.

TODO: missing bypass doc

```plantuml
@startuml
state Local
state Remote {
  state NormalOperation {
    state Automatic {
      state "Idle" as autoIdle
      state "PoweringOn" as poweringOn {
        state "Cooling" as autoCoolingOn
        state "OilCirculation" as autoOilOn
        state "CoolingOilTank" as autoTankOn
        state "MainPump" as autoPumpOn
        state "CoolingBearings" as autoBearingsOn

        [*] --> autoCoolingOn
        autoCoolingOn --> autoOilOn
        autoOilOn --> autoTankOn
        autoTankOn --> autoPumpOn
        autoPumpOn --> autoBearingsOn
        autoBearingsOn --> [*]
      }
      state "PoweringOff" as poweringOff {
        state "Cooling" as autoCoolingOff
        state "OilCirculation" as autoOilOff
        state "MainPump" as autoPumpOff

        [*] --> autoPumpOff
        autoPumpOff --> autoOilOff
        autoOilOff --> autoCoolingOff
        autoCoolingOff --> [*]

      }
      state "Enable" as autoEnable

      [*] -l-> autoIdle
      autoIdle --> poweringOn
      poweringOn --> autoEnable
      autoEnable --> poweringOff
      poweringOff --> autoIdle
    }
    state Manual {
      state "Idle" as manualIdle
      state "Cooling\PoweringOn" as coolingOn
      state "Cooling\PoweringOff" as coolingOff
      state "Cooling\PoweringLocal" as coolingLocal
      state "Cooling\Enable" as coolingEnable
      state "OilCirculation\PoweringOn" as oilOn
      state "OilCirculation\PoweringOff" as oilOff
      state "OilCirculation\PoweringLocal" as oilLocal
      state "OilCirculation\Enable" as oilEnable
      state "MainPump\PoweringOn" as pumpOn
      state "MainPump\PoweringOff" as pumpOff
      state "MainPump\PoweringLocal" as pumpLocal
      state "MainPump\Enable" as pumpEnable

      [*] -l-> manualIdle
      manualIdle --> coolingOn
      manualIdle -r-> coolingLocal
      coolingOn -u-> coolingOff
      coolingOff --> manualIdle
      coolingOn --> coolingEnable
      coolingLocal --> coolingEnable
      coolingLocal --> coolingOn
      coolingLocal --> coolingOff
      coolingEnable --> coolingOff
      coolingEnable --> oilLocal
      coolingEnable --> oilOn
      oilOn --> oilOff
      oilOn --> oilEnable
      oilOff --> coolingEnable
      oilLocal --> oilOn
      oilLocal --> oilOff
      oilLocal --> oilEnable
      oilEnable --> pumpLocal
      oilEnable -r-> oilOff
      oilEnable --> pumpOn
      pumpOn --> pumpOff
      pumpOn --> pumpEnable
      pumpOff --> oilEnable
      pumpLocal --> pumpOn
      pumpLocal --> pumpOff
      pumpLocal --> pumpEnable
      pumpEnable -u-> pumpOff
    }
    state ChangingOperation
    manualIdle --u--> ChangingOperation
    Manual <---- ChangingOperation
    autoIdle --u--> ChangingOperation
    Automatic <---- ChangingOperation
  }
  state Fault
  state ResettingEvents

  NormalOperation -l-> Fault
  manualIdle -u---> ResettingEvents
  Manual <---- ResettingEvents
  autoIdle ----> ResettingEvents
  Fault ----> ResettingEvents
}

state InternalErrors

[*] --> CommandMemory
CommandMemory --> InitActions : MemoryOk
InitActions --> Remote : InitOK
Remote -l-> InternalErrors : Error
Remote -r-> Local
@enduml
```

The two triggers that come out of the on state and go back to it are static reactions inside the on state to "enable" the alarms after certain time.
