; This function will execute different actions depending on current active window
ctrl_f9() {
    ;Default action : Reads file and returns text on C:\Users\<Username>\Hotkeys\ctrl_f9.txt
    Send % textFileContent(returnHotkeysDir() "ctrl_f9.txt")
    return
}