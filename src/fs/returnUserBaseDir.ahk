returnUserBaseDir() {
    EnvGet, vUserProfile, USERPROFILE
    return %vUserProfile%
}

returnHotkeysDir() {
    userDir := returnUserBaseDir()
    hotkeysDir := userDir "\Hotkeys\"
    return %hotkeysDir%
}