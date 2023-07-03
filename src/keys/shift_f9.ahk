; This function will execute different actions depending on current active window
shift_f9() {
    ; If the current active window is Github Desktop, open VsCode on folder
    IfWinActive ahk_exe GitHubDesktop.exe 
    {
        openInVsCode()
        return
    }

    ;Default action : Reads file and returns text on C:\Users\<Username>\Hotkeys\shift_f9.txt
    Send % textFileContent(returnHotkeysDir() "shift_f9.txt")
    return
}