# Commands and Events Management

This section contains the different components related to the commands and
events from the TMA that are:

- TCP Server: this component is the one the TMA connects to over TCP to
 send and receive the TCP messages. The message to send is specified to the
 task by a public method of the TCP server object, and the received messages
 are published in a user event created when the object is initialized.

- CommandReceiver: this component is the one receiving the commands from the TMA and triggering the corresponding statemachines for each of them. This is done using the TCP server component.

- Events: this component is the one sending events to the TMA. This is done using the TCP server component.
