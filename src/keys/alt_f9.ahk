; This function will execute different actions depending on current active window
alt_f9() {
    ; If the current active window is Github Desktop, open explorer on repository folder
    IfWinActive ahk_exe GitHubDesktop.exe 
    {
        openInExplorer()
        return
    }

    ;Default action : Reads file and returns text on C:\Users\<Username>\Hotkeys\shift_f9.txt
    Send % textFileContent(returnHotkeysDir() "alt_f9.txt")
    return
}