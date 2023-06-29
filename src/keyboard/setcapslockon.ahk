setcapslockon() {
    state := GetKeyState("Capslock", "T") ; 1 if Capslock is ONE, 0 othewise
    if state = 0 
    {
        SetCapsLockState, On
    }
}