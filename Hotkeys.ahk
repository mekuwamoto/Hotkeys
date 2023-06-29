#include ./src/keyboard/setcapslockon.ahk
#include ./src/languages/mssql.ahk

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
;                         SQL Server Text Replacements
;*********************************************************************************
; Set Capslock on if not on and returns "SELECT * FROM"
::]s8::
    selectall()    
return

; Set Capslock on if not on and returns "SELECT TOP 1000 * FROM"
::]st8::
    selectTop1000()
return

;*********************************************************************************
;                             Generating GUIDs
;*********************************************************************************
