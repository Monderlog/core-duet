M307 H0 B0 R0.444 C752.6 D6.12 S1.00 V24.4 ; PID tune for bed at 60c
M307 H1 B0 R2.102 C240.5 D10.44 S1.00 V24.4 ; Pid tune for hotend at 215c
M572 D0 S0.05   ; Pressure advance for PLA
T0
M140 S60			; Bed temp
;M116				; Waiting for completion
G10 P0 S200			; Tool temp
M116
M98 P"0:/macros/music/TwoBits.g"
