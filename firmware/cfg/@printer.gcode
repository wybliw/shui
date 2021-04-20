;https://t.me/joinchat/Uo-lWdZznR8Yfecb

M117 SHUI M414 S1      		    ;set language RU

M117 SHUI M1 X220 Y220 Z250      		;set machine size

; Units in mm (mm)
G21    
;Steps per unit:
M92 X80.40 Y80.40 Z1600.00 E412.00

;Maximum feedrates (units/s):
M203 X400.00 Y400.00 Z10.00 E200.00

;Maximum Acceleration (units/s2):
M201 X1000.00 Y1000.00 Z100.00 E1000.00

;Acceleration (units/s2): P<print_accel> R<retract_accel> T<travel_accel>
M204 P1000.00 R1000.00 T1001800.00

; Advanced: B<min_segment_time_us> S<min_feedrate> T<min_travel_feedrate> J<junc_dev>
M205 B20000.00 S0.00 T0.00 J0.01

; Home offset:
M206 X0.00 Y0.00 Z0.00

; Material heatup parameters:
M145 S0 B60 H200 ;Material preset
M145 S1 B90 H230
M145 S2 B70 H240
M145 S3 B110 H210

;PID Settings
M301 E0 P22.20 I1.08 D114.00	
M301 E1 P22.20 I1.08 D114.00
M304 P10.00 I0.023 D305.4

;Filament load/unload config
M603 T0 L800 U850				
M603 T1 L800 U850


M117 SHUI M3 X1 Y1 Z1 T0 E1    ;Axis invertion (1 - inverted)

M117 SHUI M4 S1 X0 Y1 Z1       ;Endstop passive level (S-1-MAX/0-MIN XYZ - 1/0 VCC/GND enstop)
M117 SHUI M4 S0 X1 Y0 Z1 


M117 SHUI M5 X21 Y22 Z23 E5 F1000	;Filament change point (X, Y, dZ, dE-retract feedrate)    

M117 SHUI M2 S0 X20 Y20          ;set manual leveling point
M117 SHUI M2 S1 X110 Y20
M117 SHUI M2 S2 X200 Y20

M117 SHUI M2 S3 X20 Y110       
M117 SHUI M2 S4 X110 Y110
M117 SHUI M2 S5 X200 Y110

M117 SHUI M2 S6 X20 Y200       
M117 SHUI M2 S7 X110 Y200
M117 SHUI M2 S8 X200 Y200



; Power control
;F - flags. 
;	1 - module exists, 
;	2 - auto power off
;	4 - wait cooling hotend
;S - delay before power off (0-255 sec)
;T - hotend temperature (0-255 celsius)

M117 SHUI M6 F7 S20 T50 

M500

M117 SHUI M10 S-1
;MOVE_X_INC 0
M117 SHUI M10 S0|G91|G1 X%3.1f F2000|G90
;MOVE_X_DEC 1
M117 SHUI M10 S1|G91|G1 X-%3.1f F1000|G90
;MOVE_Y_INC 2
M117 SHUI M10 S2|G91|G1 Y%3.1f F1000|G90
;MOVE_Y_DEC 3
M117 SHUI M10 S3|G91|G1 Y-%3.1f F1000|G90
;MOVE_Z_INC 4
M117 SHUI M10 S4|G91|G1 Z%3.1f F1000|G90
;MOVE_Z_DEC 5
M117 SHUI M10 S5|G91|G1 Z-%3.1f F1000|G90
;MOVE_E0_INC 6
M117 SHUI M10 S6|G91|G1 T0 E%3.1f F1000|G90
;MOVE_E0_DEC 7
M117 SHUI M10 S7|G91|G1 T0 E-%3.1f F1000|G90
;MOVE_E1_INC 8
M117 SHUI M10 S8|G91|G1 T1 E%3.1f F1000|G90
;MOVE_E1_DEC 9
M117 SHUI M10 S9|G91|G1 T1 E-%3.1f F1000|G90
;HOME_X 10
M117 SHUI M10 S10|G28 X0|M0 S2 Homed
;HOME_Y 11
M117 SHUI M10 S11|G28 Y0|M0 S2 Homed
;HOME_Z 12
M117 SHUI M10 S12|G28 Z0|M0 S2 Homed
;HOME_ALL 13
M117 SHUI M10 S13|G28|M0 S2 Homed
;HOME_B 14
M117 SHUI M10 S14|G1 Z200 F2000|M0 S2 Bed homed
;HOME_T 15
M117 SHUI M10 S15|G91|G1 Z20 F2000|G90|G1 X20 Y20|M0 S2 Tool homed
;POWER_OFF 16
M117 SHUI M10 S16|M81
;FILAMENT_LOAD 17
M117 SHUI M10 S17|G91|G1 T%d E%3.1f F2500|G90
;FILAMENT_UNLOAD 18
M117 SHUI M10 S18|G91|G1 T%d E-%3.1f F2500|G90
;STEPPERS OFF 19
M117 SHUI M10 S19|M81|M300


;Home UI snippets
M117 SHUI M10 S40|M0 S2 snippet 40
M117 SHUI M10 S41|M0 S2 snippet 41
M117 SHUI M10 S42|M0 S2 snippet 42
M117 SHUI M10 S43|M0 S2 snippet 43

;Filament UI snippets
M117 SHUI M10 S44|M0 S2 snippet 44
;M117 SHUI M10 S45|M0 S2 snippet 45
;M117 SHUI M10 S46|M0 S2 snippet 46
M117 SHUI M10 S47|M0 S2 snippet 47

;GCODE UI snippets
M117 SHUI M10 S48|M105
M117 SHUI M10 S49|M114
M117 SHUI M10 S50|M118 E1 SHUI firmware
M117 SHUI M10 S51|M117 SHUI M20 W2

M117 SHUI M10 S-2

M0 S2 Configured
;end