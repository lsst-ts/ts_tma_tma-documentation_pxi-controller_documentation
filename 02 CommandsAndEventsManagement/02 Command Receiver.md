## Command Receiver

This component is the one receiving the commands from the TMA and triggering the corresponding statemachines for each of them. This is done using the TCP server component.

Thic component also will reject any command that are not sent from the actual commander, and manage the actual comander logic.

The commander clock (it is a command actually) is also checked in this component and if clocks timeouts, then it will trigger all statemachines subscribed to fault, unless those statemachines are configured as not fault when subscribed.

All the elements of the component are in the TCPCMDReceiver.lvlib, except the dependency of TCP server component.

### TCPCMDReceiver.lvlib

The command is recived using TCP server and the vis on this library will parse it, process and send to statemachines if necesary.

All the commands are received by the TCP task that will produce an user event in the TCPCMDReceiver. This libray will parse the command, and send to the subsystem if it is subscribed. There are two commands that are process direcly by this module (clock and SetCommander).

The TCPCMDReceiver manages also the actual commander and the watchdog for the commander.

#### Task
The task has two loops. The first one is a state machine where the idle state is for receiving commands from tcp or from local machine (configuarion, subscribe, unsubscribe and exit comamnds). All the commands are user events. If the received command is from tcp it will be server to the other loop (consumer loop) using a queue.

When a susbystem is subsribed it is stored in a DVR of arrays for all susbscribed subsystems.

The consumer loop will deal with tcp commands. This loop is also a state machine where the dequeue of the queue is done GetCMDData state. Other states are to process the command, init, exit and error handling.

There are two commands processed locally, 
* The clock command. It will reset the watchdog. If the watchdog time is overcomed then the subscribed subsystem will faulted and the commander will be reseted to "not configured"
* The SetCommander command. It will change the actual commander. This transition is not allowed if the commander is the HHD and the command is not from the HHD.

![TcpCmdReceiverTask.vi\label{TcpCmdReceiverTask}](../Resources/figures/TcpCmdReceiverTask.PNG)


#### Public methods
In this section the public methods and their usage is explained

##### Init
Calling this VI will launch the task to receive the command via tcp. This vi needs 
* **Server object:** A tcp server object already initialized as input. 
* **DataFromTCP:** The user events reference DataFromTCp the intilization of the tcp server are inputs. 
* **TaskError:** The user events reference DataFromTCp the intilization of the tcp server are inputs.
* **Actual Commander NSV:** The reference of the Actual commander variables is also needed to publish the actual commander.
* **Time To Delete Queue:** An optional input for time to delete queues. If there is no response from the statechart the task will flush the queue after this time, this way the statechart will accept new commands. If the time is fullfilled a warning is publish. The default value for this optional inputs is 2000ms.

![TcpCmdReceiverInit.vi\label{TcpCmdReceiverInit}](../Resources/figures/TcpCmdReceiverInit.PNG)


##### CleanUp
This Vi will close the task and all the elements created by the library. The tcp server must be clean up separately.

![TcpCmdReceiverCleanup.vi\label{TcpCmdReceiverCleanup}](../Resources/figures/TcpCmdReceiverCleanup.PNG)


##### SubscribeSubsystem
Calling this vi the a subsystem is subscribded to receive commands. If a subsystem is subscribed commands received by the task can be redirected to this subsystem, otherwise the commands will be rejected by the task. If the subscrition is not possible the error -66000 will be put in the error output.
This vi has only on input that is a structure with next fields.

* **Subsystem Name:** Name to identigy the subsystem
* **Minimum Command:** Minimum command of the set of commands attended by the subscribing subsystem
* **Maximum Command:** Maximum command of the set of commands attended by the subscribing subsystem
* **CommandObjects:** Array of CMDManagement objects. There is an object per susbsystem instance.
* **Send Faults:** If True (default) a fault will be sent to the subsystem if the commander watchdog is triggered

![TcpCmdReceiverSubscribe.vi\label{TcpCmdReceiverSubscribe}](../Resources/figures/TcpCmdReceiverSubscribe.PNG)


##### UnsubscribeSubsystem
Calling this VI a subscribed susbsystem can be unsbuscribeb to stop receiving commands from the command reception task. If the unsubscrition is not possible the error -66000 will be put in the error output.
This vi only needs the identification of the subscribed subsystem
* **Subsystem name:** Name that indentified the subsystem when subscribed.

![TcpCmdReceiverUnsubscribe.vi\label{TcpCmdReceiverUnsubscribe}](../Resources/figures/TcpCmdReceiverUnsubscribe.PNG)

##### SeCommanderClock
This VI allows to change the default 5000 ms time for the commander watchdog

* **Time To Fault:** Watchdog time in ms. If the elapsted time beween two clock commands from the commander is bigger than this time a fault will be triggered in all subscribed susbsystem with this option active

![TcpCmdReceiverClock.vi\label{TcpCmdReceiverClock}](../Resources/figures/TcpCmdReceiverClock.PNG)


