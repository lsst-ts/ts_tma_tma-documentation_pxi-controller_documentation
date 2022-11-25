## State Machine
The behaviour of the system is managed by the state machine. The state machine for cable wraps is shown in next diagram

@startuml


state NoInternalErrors {
  
  state Idle
  state On {
    state WaitDrivesOn
    state ReleasingBrakes
    state Enable
    state ChangingDrive{
    }
    state DiscreteMove
    state Stopping
    state JogMove
    state Tracking
    state ChangeDriveInTracking{
    }
    [*] --> WaitDrivesOn
    WaitDrivesOn --> ReleasingBrakes
    ReleasingBrakes --> Enable
    Enable --> DiscreteMove : Move
    DiscreteMove --> Enable : MoveDone
    DiscreteMove --> Stopping : Stop
    Enable --> JogMove : MoveVelocity
    JogMove --> Stopping : Stop
    Enable --> Tracking : EnableTracking
    Tracking --> Tracking : Track
    Tracking --> Stopping : Stop
    Tracking --> ChangeDriveInTracking : FaultInOneDrive
    ChangeDriveInTracking --> Tracking
    ChangeDriveInTracking --> Stopping : Stop
    Stopping --> Enable : StopDone
    Enable --> ChangingDrive : ChangeDrive
    ChangingDrive --> Enable : ChangeDriveDone
  }
  state Fault
  
  [*] --> Idle
  Idle -down-> On : Power(on)
  On -right-> Fault : Alarm
  Fault -left-> Idle : Reset
  On -up-> Idle : Power(off)

}

state InternalErrors {
}

NoInternalErrors --> InternalErrors 

[*] --> CommandMemory
CommandMemory --> InitActions : MemoryOk
InitActions --> Idle : InitOK

@enduml