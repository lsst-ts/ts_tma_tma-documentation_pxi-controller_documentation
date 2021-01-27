# Real Time Code Structure

The real time code is an important part of the overall system, as
seen in Figure \ref{figureone350f30df820b4ef01f38b7cadcba9985} where the real time code corresponds to the TMA PXI (the real time controller that manages the statemachines of all the TMA systems) and the AXES PXI (the real time controller that manages the main axes loops, AZ and EL) labels.

![Communications structure between the different components of the MainControl System (MCS)\label{figureone350f30df820b4ef01f38b7cadcba9985}](../Resources/figures/350f30df820b4ef01f38b7cadcba9985.png)

Focusing only in the real time part, 

#TODO: add a figure of the structure in the PXIs

As shown in Figure \ref{XXX}, the components of the real time code are:

- TCP Server: this component is the one the TMA connects to over TCP to
 send and receive the TCP messages. The message to send is specified to the
 task by a public method of the TCP server object, and the received messages
 are published in a user event created when the object is initialized.

- CommandReceiver: this component is the one receiving the commands from the TMA and triggering the corresponding statemachines for each of them. This is done using the TCP server component.

- Events: this component is the one sending events to the TMA. This is done using the TCP server component.
