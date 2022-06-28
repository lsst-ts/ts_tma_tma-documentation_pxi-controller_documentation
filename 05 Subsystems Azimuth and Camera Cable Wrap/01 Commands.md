## Commands

In this section allowed commands are described

There is an equivalent command for azimuth cable wrap and camera cable wrap. The first one is the 300 range and the
second one in the 1000 range.

### Power

This command is used to command the power of the subsystem.

- Command Name: CAM_CW_POWER, AZ_CW_POWER
- Command number: 1001, 301
- Command Parameters:
  - Boolean: Command to power on (TRUE) or power off (FALSE)

### Stop

This command is used to command the stop motion of the subsystem.

- Command Name: CAM_CW_STOP, AZ_CW_STOP
- Command number: 1002, 302
- Command Parameters:
  - None

### Move

This command is used to command a point to point move of the subsystem.

- Command Name: CAM_CW_MOVE_VELOCITY, AZ_CW_MOVE_VELOCITY
- Command number: 1003, 303
- Command Parameters:
- DBL: Desired position in deg
  - DBL: Maximum admissible speed in deg/s. If zero, default value will be used
  - DBL: Maximum admissible acceleration in deg/s^2. If zero, default value will be used
  - DBL: Maximum admissible jerk in deg/s^3. If zero, default value will be used

### Move Velocity

This command is used to command a continuous move of the subsystem, this means that it will move at desired fixed speed
until a stop is received.

- Command Name: CAM_CW_MOVE, AZ_CW_MOVE
- Command number: 1008, 304
- Command Parameters:
  - DBL: Desired speed in deg/s.
  - DBL: Maximum admissible acceleration in deg/s^2. If zero, default value will be used
  - DBL: Maximum admissible jerk in deg/s^3. If zero, default value will be used

### Enable Track

This command is used to enter the tracking state. This command has no effect in the real time statechart but
must be accepted only if the system is on.

- Command Name: CAM_CW_ENABLE_TRACK_CAMERA, AZ_CW_ENABLE_TRACK_AZIMUTH
- Command number: 1009, 309
- Command Parameters:
  - BOOL: Desired status for tracking, TRUE on, FALSE off.

### Track

This command is used to send the position to be tracked. This command will be applied when the time in parameters is
achieved by the real time controller, not before.

- Command Name: CAM_CW_TRACK_CAMERA, AZ_CW_TRACK_AZIMUTH
- Command number: 1004, 305
- Command Parameters:
  - DBL: Desired position in deg.
  - DBL: Desired speed in deg/s.
  - DBL: Time to be in position and speed, that parameters before fixes.

### Drive reset

This command is used to command the reset of the selected drive. The subsystem could be in fault or in normal operation
with a warning.

- Command Name: CAM_CW_DRIVE_RESET, AZ_CW_ DRIVE_RESET
- Command number: 1007, 307
- Command Parameters:
  - Int32: Drive ID, 0 or 1.

### Drive enable

This command is used to command the change to enable of one drive and to disable to the other. The subsystem will enable
the less used drive at power on, but the user can change the active drive while the system is on.
The drive will be also automatically change if an error occurs with actual active drive,

- Command Name: CAM_CW_DRIVE_ENABLE, AZ_CW_ DRIVE_ENABLE
- Command number: 1006, 308
- Command Parameters:
  - Int32: Drive ID, 0 or 1.

### Reset Alarm

This command is used to command the reset of the subsystem. This command also triggers the transition from alarm state to
idle state if the system is in alarm state.

- Command Name: CAM_CW_RESET_ALARM, AZ_CW_RESET_ALARM
- Command number: 1005, 306
- Command Parameters:
  - None
