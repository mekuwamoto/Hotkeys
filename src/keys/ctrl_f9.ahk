; This function will execute different actions depending on current active window
ctrl_f9() {
    ; If the current active window is Visual Studio Code, autoformat code
    IfWinActive ahk_exe Code.exe 
    {
        autoFormatVisualStudioCode()
    }

    ; If the current active window is Visual Studio, autoformat code
    IfWinActive ahk_exe devenv.exe 
    {
        autoFormatVisualStudio()
        return        
    }

    ; If the current active window is Sql Server Management Studio, it will filter default database
    IfWinActive ahk_exe Ssms.exe 
    {
        filterDefaultDatabase()
        return
    }

    ; If the current active window is Github Desktop, open browser on selected repository
    IfWinActive ahk_exe GitHubDesktop.exe 
    {
        viewOnGithub()
        return
    }

    ;Default action : Reads file and returns text on C:\Users\<Username>\Hotkeys\ctrl_f9.txt
    Send % textFileContent(returnHotkeysDir() "ctrl_f9.txt")
    return
}