;*********************************************************************************
;                                  About
;*********************************************************************************

; Modifiers:
; ^ - Ctrl
; ! - Alt
; + - Shift
; # - Win

; Reload this entire script (Ctrl + Shift + R)
^!r::Reload 


;*********************************************************************************
;                             Main Controllers
;*********************************************************************************

;*********************************************************************************
;                             Simple text replacements
;*********************************************************************************
; Returns email address
::]@@@::email@email.com

; Returns my github profile
::]mek::mekuwamoto

;*********************************************************************************
;                             Datetime replacements
;*********************************************************************************
; Returns formatted current date dd/MM/yyyy
::dt::
    FormatTime, CurrentDateTime ,, dd/MM/yyyy
return

; Returns formatted current date yyyyMMdd
::dt2::
    FormatTime, CurrentDateTime ,, yyyyMMdd
return

; Returns formatted current time HH:mm
::dt2::
    FormatTime, CurrentDateTime ,, HH:mm
return

;*********************************************************************************
;                             Generating GUIDs
;*********************************************************************************
