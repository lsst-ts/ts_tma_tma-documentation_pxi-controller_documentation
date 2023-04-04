## State Machine
The behaviour of the system is managed by the state machine. The state machine for main axes is shown in next diagram. The states with bold line are superstates that have substates inside. In order to make the state machine more comprensible, for some superstates their inner substates are not shown, and the "Not shwon substates inside" label is shown. Refer to diagrams bellow to get info about the inner substates for those superstates without inner info shown.

```plantuml
@startuml

state NoInternalErrors ##[bold]{
  
  state Idle  
  state On ##[bold] {
    state PoweringOn ##[bold]
    PoweringOn : Not shown substates inside
    state Enable
    state DiscreteMove
    state JogMove
    state Homing ##[bold]
    Homing : Not shown substates inside
    state Tracking
    state Stopping
    state PoweringOff ##[bold]
    PoweringOff : Not shown substates inside
    state ExitPoint <<exitPoint>> 
    
    [*] --> PoweringOn
    PoweringOn --> Enable
    Enable --> DiscreteMove : Move
    DiscreteMove --> Enable : MoveCompleted
    Enable --> JogMove : MoveVelocity
    JogMove --> Stopping : Stop
    Stopping -left-> Enable : StopCompleted
    Enable -right-> Homing : Home
    Enable --> Tracking : EnableTrack
    Homing -left-> Enable : HomeDone
    Homing -left-> Enable : HomeFailed    
    Tracking --> Stopping : Stop
    Enable -left-> PoweringOff : Power (off)
    PoweringOff -left-> ExitPoint
    
  }
  state Fault ##[bold]
  Fault : Not shown substates inside
  state Reset##[bold]
  Reset : Not shown substates inside

  [*] --> Idle
  Idle -down-> On : Power (on)
  On -left-> Fault : Alarm
  Fault -up-> Reset : Reset
  Idle -left-> Reset : Reset
  Reset -right-> Idle : ResetFinished
  ExitPoint -up-> Idle
 
}

state InternalErrors ##[bold]
state CommandMemory
state Init



[*] -down-> CommandMemory
CommandMemory -down-> Init : MemoryOk
Init -down-> NoInternalErrors : InitOK
NoInternalErrors -up-> InternalErrors : Error
InternalErrors -left-> Init : Reset

@enduml
```
For PoweringOn superstate the inner substates are shown in next diagram. All states named powering are states to power on elements.

```plantuml
@startuml

state PoweringOn{
        state HornAndLight
        state ClearingErrorsEIB
        state PoweringEIB
        state ResettingAxis
        state ClearingErrorsCW
        state PoweringCW
        state ApplyOffset
        state EnablingElectricalAngleFromEncoder
        state EnablingAxis
        state EnablingTrackingCW
        state ReleasingBrakes

        [*] -->HornAndLight
        HornAndLight-->ClearingErrorsEIB : GoOn
        ClearingErrorsEIB-->PoweringEIB : ClearErrorsEIBDone
        PoweringEIB-->ResettingAxis : PowerEIBDone
        ResettingAxis-->ClearingErrorsCW : AxisResetDone
        ClearingErrorsCW --> PoweringCW : ClearErrorsCWDone
        PoweringCW-->ApplyOffset : PowerCWDone
        ApplyOffset-->EnablingElectricalAngleFromEncoder : GoOn
        EnablingElectricalAngleFromEncoder-->EnablingAxis : Timer
        EnablingAxis-->EnablingTrackingCW : AxisEnabled
        EnablingTrackingCW-->ReleasingBrakes : EnableTrackingCWDone
        ReleasingBrakes --> [*] :BrakesReleased
    }

@enduml
```
For PoweringOff superstate the inner substates are shown in next diagram.All states named powering are states to power off elements.

```plantuml
@startuml
state PoweringOff{
      state DisablingAxis
      state EngagingBrake
      state ResetingDrives
      state StoppingCW
      state PoweringCW
      state PoweringEIB

      [*] --> DisablingAxis
      DisablingAxis --> EngagingBrake : AxisDisabled
      EngagingBrake --> ResetingDrives : BrakesEngaged
      ResetingDrives --> StoppingCW : Timer
      StoppingCW --> PoweringCW : CableWrapStopDone
      PoweringCW --> PoweringEIB : PowerCableWrapDone
      PoweringEIB --> [*] : PowerEIBDone


}
@enduml
```
For Homing superstate the inner substates are shown in next diagram

```plantuml
@startuml
state Homing{
      state startingEIBreferenceMode
      state FindingReference
      state StoppingAxis
      state Stabilization
      state SetAbsolutionPosition
      state NoReferenceStopping
      state Join <<Join>>
      state StoppingReferencing

      [*]-->startingEIBreferenceMode 
      startingEIBreferenceMode --> FindingReference : StartingEIBReferenceDone
      FindingReference --> StoppingAxis : ReferenceFound
      StoppingAxis --> Stabilization : StopCompleted
      Stabilization --> SetAbsolutionPosition : Timer
      SetAbsolutionPosition --> [*] : GoOn
      FindingReference --> NoReferenceStopping : Stop or ReferenceFailed
      NoReferenceStopping --> Join : StopCompleted
      startingEIBreferenceMode --> Join : Stop
      Join --> StoppingReferencing : GoOn
      StoppingReferencing --> [*] : StoppingReferencingDone
    }

@enduml
```