selectall() {
    setcapslockon()
    Send SELECT * FROM
}

selectTop1000() {
    setcapslockon()
    Send SELECT TOP 1000 * FROM
}

filterDefaultDatabase() {
    Send {AppsKey}
    Send {Down}
    Send {Down}
    Send {Down}
    Send {Down}
    Send {Down}
    Send {Right}
    Send {Down}
    Send {Enter}
    Send {Tab}
    Send {Tab}
    Send database
    Send {Down}
    Send {Down}
    Send {Tab}
    Send {Tab}
    Send {Enter}
}