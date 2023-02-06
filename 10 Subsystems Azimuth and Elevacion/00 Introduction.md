# Azimuth And Elevation

The main axes for the telescope are Azimuth and Elevation axes.
Both axis use the same code for most of elements that must be managed by one axis, but the code will execute only if the element is present for that subsystem. For instance, the ACW is only ready for Azimuth axis so Elevation will not call ACW.

TODO: complete info