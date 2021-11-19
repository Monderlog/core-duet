; Raise temp of heated bed to 80 and nozzle to 230
;

M291 P"Setting PID and retraction values for PETG" R"Proceed?" S3

; New values

M307 H0 B0 R0.427 C810.9 D5.49 S1.00 V24.4 ; PID tune for bed at 75c
M307 H1 B0 R2.178 C244.0 D9.89 S1.00 V24.4 ; Pid tune for hotend at 230c

M572 D0 S0.07   ; Pressure advance for Edge PETG
;M207 S0.8 R-0.000 F8000 T1500   ; retraction settings for Edge PETG

T0

M140 S75			; Set bed temp to 75
M116				; Wait for temps to be reached...
G10 P0 S220		    ; Set extruder temp (tool 0) to 220
M116
M117 PETG Preheat complete	; and send a notice to the screen that temps have been reached
;Play a tone
M300 S1250 P200
G4 P201
M300 S1500 P200
G4 P201
M300 S1100 P200
G4 P201
M300 S950 P300
G4 P400
M300 S1175 P300
G4 S1
