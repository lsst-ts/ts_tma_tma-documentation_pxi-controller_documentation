# Introduction

This document explains the structure for the real time (RT)
software located in the PXIController,
[here](https://gitlab.tekniker.es/aut/projects/3151-LSST/LabVIEWCode/PXIController).
The purpose of this documentation is to explain the architecture design of the
real time software. To do so, the main components of the code are explained. The
develop tools and tips are also included as part of the documentation.

Important notes:

- In the documentation there could be some misunderstandings due to the naming of the hardware devices and software. Mainly when using the abbreviations EUI and HHD.
  - EUI stands for Engineering User Interface, but sometimes it is used to
    refer to the PC that runs the EUI itself. This PC is named MCC (Main
    Control Computer).
  - HHD stands for Handheld Device, but the EUI that runs on the HHD it is
    also called HHD.

- HMI stands for Human Machine Interface, but sometimes it is referred as EUI.

- TMA: in the documentation TMA can refer both to the actual telescope and to the operation_manager software developed in C++.
