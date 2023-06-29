displayCurrentColor() {
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB
    MsgBox %color%
    return
}