; Raise temp of heated bed to 60 and nozzle to 215
;

M291 P"Setting PID and retraction values for PLA" R"Proceed?" S3

; New values

M307 H0 B0 R0.444 C752.6 D6.12 S1.00 V24.4 ; PID tune for bed at 60c
M307 H1 B0 R2.098 C248.2 D10.14 S1.00 V24.4 ; Pid tune for hotend at 215c

M572 D0 S0.05   ; Pressure advance for PLA
;M207 S0.7 R-0.000 F8000 T1500   ; retraction settings for PLA

T0

M140 S60			; Set bed temp to 60
M116				; Wait for temps to be reached...
G10 P0 S180			; Set extruder temp (tool 0) to 180
M116
M117 PLA Preheat complete	; and send a notice to the screen that temps have been reached
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
