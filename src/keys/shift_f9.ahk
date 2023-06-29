; This function will execute different actions depending on current active window
shift_f9() {
    ;Default action : Reads file and returns text on C:\Users\<Username>\Hotkeys\shift_f9.txt
    Send % textFileContent(returnHotkeysDir() "shift_f9.txt")
    return
}