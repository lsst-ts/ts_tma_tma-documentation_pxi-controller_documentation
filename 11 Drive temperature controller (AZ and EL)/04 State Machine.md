## State Machine

The behavior of the system is managed by the state machine. The state machine is represented in the diagram below.

```plantuml
@startuml
state NoInternalErrors {
  state Idle
  state On {
    state TrackingAmbient
    state TrackingSetpoint
    state Manual

    [*] --> TrackingAmbient
    TrackingAmbient --> Manual : manual
    TrackingAmbient --> TrackingSetpoint : trackSetpoint
    TrackingSetpoint --> TrackingAmbient : trackAmbient
    TrackingSetpoint --> Manual : manual
    Manual --> TrackingAmbient : trackAmbient
    Manual --> TrackingSetpoint : trackSetpoint
  }
  state Fault
  state ResettingEvents
  
  [*] --> Idle
  Idle --> On : Power(on)
  On --> Fault : Alarm
  note on link
  filter over temperature alarms
  to avoid going to fault
  end note
  On --> Idle : Power(off)
  Fault --r> ResettingEvents : Reset
  Idle --> ResettingEvents : Reset
  ResettingEvents --> Idle
  On --> On : temp. OK     \nor\ntimeout
  note as n
  - temp. OK means no over temperature alarm active
  - timeout means over temperature alarm active but timeout expired
  end note
  On -up-> On : temperature fault
}

state InternalErrors {
}

[*] --> CommandMemory
CommandMemory --> InitActions : MemoryOk
InitActions --> Idle : InitOK
InitActions -[hidden]-> NoInternalErrors
NoInternalErrors -l-> InternalErrors : Error

@enduml
```

The two triggers that come out of the on state and go back to it are static reactions inside the on state to "enable" the alarms after certain time.
