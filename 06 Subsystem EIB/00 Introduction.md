# Encoder System (EIB) introduction

The EIB is a hardware that enables the reading of the encoder positions. The hardware converts the analog data get from
the heads into a counting data. The hardware has 8 inputs.

The software implemented is to manage the EIB and to read and convert data gotten from the EIB to telescope angles. The
EIB is a subordinated subsystem that could not be accessed directly from the commander. The commands to the EIB go through
Azimuth subsystem that will check that the command is allowed. To command the EIB from the commander, Azimuth and Elevation
must be in idle state, otherwise the command will be rejected by Azimuth.

In addition, both azimuth and elevation can manage the EIB, so both subsystems send commands to the EIB subsystem.

```plantuml
@startuml
node "MCC"{
    [OMT]
}
node "TMA-PXI"{
    [Azimuth]
    [Elevation]
    [EIB(TMA-PXI)]
}
node "AXES PXI"{
    [EIB(AXES PXI)]
    [Axes Control]
    [EtherCAT]
}
node "EIB Hardware"{
    [EIB]
}
node "SyncCRIO"
node "AZ Drive 1"
node "..."
node "EL Drive 12"
[commander]-down->[OMT]:CMD
[OMT]-down->[Azimuth]:CMD
[Azimuth]-down->[EIB(TMA-PXI)]:CMD
[Elevation]-down->[EIB(TMA-PXI)]:CMD
[EIB(TMA-PXI)]-down->[EIB(AXES PXI)]:CMD
[EIB(AXES PXI)]-left->[Axes Control]:Head Data
[EIB(TMA-PXI)]-down->[EIB]:CMD
[EIB]-up->[EIB(AXES PXI)]:Head Data

[EtherCAT] -down- "AZ Drive 1"
"AZ Drive 1" -right- "..."
"..." -right- "EL Drive 12"
"EL Drive 12" -right- SyncCRIO
SyncCRIO-right--> EIB :Trigger

@enduml
```

The EIB code is divided in two main parts. The first part runs in the TMA-PXI and implements the state machine. The
state machine configures the hardware and the other software part that runs in the AXES PXI. The AXES PXI part gets the
head data and processes it to serve it to the Axes control algorithm.

There is another code that is running in the FPGA of a cRIO (SyncCRIO). This hardware is used to synchronize the encoder
with the control loop. The cRIO is an EtherCAT slave, that has the info of the EtherCAT loop timing, so the cRIO can send
a hardwired trigger to the EIB. This trigger in configured to receive the position data in the AXES PXI before the axis
control loop uses it to process de control algorithm, but not too early to avoid delays in the control loop.

The next diagram shows an example of EtherCAT data transmission, the axis control loop timing and where is the FPGA
triggered to ensure that the EIB data arrives to the PXI just before the next control iteration is started.

```plantuml
@startuml

clock "EtherCAT Transmission" as C0 with period 1000 pulse 50
clock "FPGA Trigger" as C2 with period 1000 pulse 10 offset 650
clock "EIB Reading and Transmission" as C3 with period 1000 pulse 200 offset 700
clock "Axis Control Loop" as C1 with period 1000 pulse 500 offset 60
@0
@9000

@enduml
```
