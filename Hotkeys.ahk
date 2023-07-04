#include ./src/fs/returnUserBaseDir.ahk
#include ./src/fs/textFileContent.ahk
#include ./src/keyboard/setcapslockon.ahk
#include ./src/languages/mssql.ahk
#include ./src/others/autoformat.ahk
#include ./src/others/displayCurrentColor.ahk
#include ./src/others/githubDesktop.ahk
#include ./src/others/guid.ahk
#include ./src/others/winActive.ahk

#include ./src/keys/alt_f9.ahk
#include ./src/keys/ctrl_f9.ahk
#include ./src/keys/shift_f9.ahk
#include ./src/keys/ctrl_shif_f9.ahk
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
; Ctrl + F9
^F9::ctrl_f9()

; Shift + F9
+F9::shift_f9()

; Alt + F9
!F9::alt_f9()

; Control + Shift + F9
^+F9::ctrl_shif_f9()

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
::]dt::
    FormatTime, CurrentDateTime ,, dd/MM/yyyy
    SendInput %CurrentDateTime%
return

; Returns formatted current date yyyyMMdd
::]dt2::
    FormatTime, CurrentDateTime ,, yyyyMMdd
    SendInput %CurrentDateTime%
return

; Returns formatted current time HH:mm
::]hr::
    FormatTime, CurrentDateTime ,, HH:mm
    SendInput %CurrentDateTime%
return

;*********************************************************************************
;                         SQL Server Code Snippets
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
;                         Shell Code Snippets
;*********************************************************************************
::]gp::git pull
::]ga::git add .
::]gs::git status
::]grh::git reset --hard HEAD~1
::]grs::git reset --soft HEAD~1
::]cd::code .

;*********************************************************************************
;                             Generating GUIDs
;*********************************************************************************
; Generates new Guid, set value to clipboard and returns generated value
::]guid::
    generateGuid()
return