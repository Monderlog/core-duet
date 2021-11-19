; Based on https://duet3d.dozuki.com/Wiki/Tuning_the_heater_temperature_control

M291 S3 R"PID Tuning Hotend to 230c" P"Do not interrupt or leave unattended while tuning in progress."

M106 P0 S0.5		; set part fan to 50%
M303 H1 S230 		; auto tune heater 1, default PWM, 230C target or maximum temperature

M98 P"0:/macros/music/TwoBits.g"

M291 S3 R"PID Tuning Complete" P"Check console for heater values. Values saved to config-Override.g"

M307 H1			; report values for heater 1
M500			; Save values to config-override.g