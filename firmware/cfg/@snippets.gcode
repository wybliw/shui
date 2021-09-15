M2005 E ;Erase snippets
M2005 S0|G91|G1 X%3.1f F1000|G90        ;MOVE_X_INC 0
M2005 S1|G91|G1 X-%3.1f F1000|G90       ;MOVE_X_DEC 1
M2005 S2|G91|G1 Y%3.1f F1000|G90        ;MOVE_Y_INC 2
M2005 S3|G91|G1 Y-%3.1f F1000|G90       ;MOVE_Y_DEC 3
M2005 S4|G91|G1 Z%3.1f F1000|G90        ;MOVE_Z_INC 4
M2005 S5|G91|G1 Z-%3.1f F1000|G90       ;MOVE_Z_DEC 5
M2005 S6|G91|T0|G1 E%3.1f F1000|G90     ;MOVE_E0_INC 6
M2005 S7|G91|T0|G1E-%3.1f F1000|G90     ;MOVE_E0_DEC 7
M2005 S8|G91|T1|G1 E%3.1f F1000|G90     ;MOVE_E1_INC 8
M2005 S9|G91|T1|G1 E-%3.1f F1000|G90    ;MOVE_E1_DEC 9
M2005 S10|G28 X0|M0 S2 Homed            ;HOME_X 10
M2005 S11|G28 Y0|M0 S2 Homed            ;HOME_Y 11
M2005 S12|G28 Z0|M0 S2 Homed            ;HOME_Z 12
M2005 S13|G28|M0 S2 Homed               ;HOME_ALL 13
M2005 S14|G28 O|G1 Z200 F2000|M0 S2 Ok  ;HOME_B 14
M2005 S15|G28 O|G91|G1 Z20 F2000|G90|G1 X20 Y20|M0 S2 Ok ;HOME_T 15
M2005 S16|M81 C                         ;POWER_OFF UI BUTTON
M2005 S17|G91|T%d|G1 E%3.1f F1500|G90   ;FILAMENT_LOAD 17
M2005 S18|G91|T%d|G1 E-%3.1f F1500|G90  ;FILAMENT_UNLOAD 18
M2005 S19|M84|M300                      ;STEPPERS OFF 19
M2005 S20|M81 C                         ;POWER_OFF HARDWARE BUTTON
M2005 S21|M117 Prepare for power off    ;PRE_POWER_OFF HARDWARE BUTTON

M2005 S22|M25|G60|G91|G1Z20T0E-10|G90|G1X20Y20|M2006W6   ;Park head
M2005 S23|G91|G1E10|G61|G90|M24; print resume
M2005 S24|G61XY|M24|M2097    ;print skip item


;M2005 S40|M0 S2 snippet 40             ;Home UI snippets
;M2005 S41|M0 S2 snippet 41
;M2005 S42|M0 S2 snippet 42
;M2005 S43|M0 S2 snippet 43

;M2005 S44|M0 S2 snippet 44             ;Filament UI snippets
;M2005 S45|M0 S2 snippet 45
;M2005 S46|M0 S2 snippet 46
;M2005 S47|M0 S2 snippet 47

M2005 S48|M105                          ;GCODE UI snippets
M2005 S49|M114
M2005 S50|M118 E1 SHUI
M2005 S51|M2006 W2

M2005 S52|M401                          ;DEBUG UI snippets
M2005 S53|M402
;M2005 S54|M118 E1 SHUI
;M2005 S55|M2006 W2
