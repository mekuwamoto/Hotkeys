# Hotkeys

This repository contains configurations for hotkeys I frequently use on Windows. It was written to be used with Autohotkey v.1

## About AutoHotKey

AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc.

-   Homepage: [https://www.autohotkey.com/](https://www.autohotkey.com/ "Go to autohotkey homepage")
-   Docs: [https://www.autohotkey.com/docs/v1/](https://www.autohotkey.com/docs/v1/ "Go to autohotkey docs page")
-   Download page: [https://www.autohotkey.com/download/](https://www.autohotkey.com/download/ "Download page")

## Getting Started

1. [Download](https://www.autohotkey.com/download/ahk-install.exe "download autohotkey") and install AutoHotKey v1.1.37
2. Execute the following cmd/powershell commands:

```
if not exist "%USERPROFILE%\Hotkeys\" mkdir "%USERPROFILE%\Hotkeys"
if not exist "%USERPROFILE%\Hotkeys\alt_f9.txt" echo GenericText1 > "%USERPROFILE%\Hotkeys\alt_f9.txt"
if not exist "%USERPROFILE%\Hotkeys\ctrl_f9.txt" echo GenericText2 > "%USERPROFILE%\Hotkeys\ctrl_f9.txt"
if not exist "%USERPROFILE%\Hotkeys\shift_f9.txt" echo GenericText3 > "%USERPROFILE%\Hotkeys\shift_f9.txt"
```

3. Double click on Hotkeys.ahk or compile this script to exe.

## Keyboard Shortcuts

My hotkeys were made mostly to be used with Ctrl+F9, Alt+F9, Shift+F9.

## Hotstrings

Hotstrings are mainly used to expand abbreviations as you type them (auto-replace), they can also be used to launch any scripted action. Documentation [here](https://www.autohotkey.com/docs/Hotstrings.htm "See hotstring documentation").

### Identification

Returns email and my github username

| Abbreviation | Phrase          |
| ------------ | --------------- |
| `]@@@`       | email@email.com |
| `]mek`       | mekuwamoto      |

### Date and time

Assuming today's date and time is `Monday, July 07, 2023, 08:33 PM`

| Abbreviation | Phrase     |
| ------------ | ---------- |
| `]dt`        | 03/07/2023 |
| `]dt2`       | 20230703   |
| `]hr`        | 20:33      |

### SQL Server Code Snippets

Code snippets to be used for SQL Server Database.

Using these snippets, it will detect if CapsLock is on. If off, it will turn on and return snippets

| Abbreviation | Phrase                  |
| ------------ | ----------------------- |
| `]s8`        | SELECT \* FROM          |
| `]st8`       | SELECT TOP 1000 \* FROM |

### Shell Code Snippets

Cmd/PowerShell/GitBash code snippets

| Abbreviation | Phrase                  |
| ------------ | ----------------------- |
| `]gp`        | git pull                |
| `]ga`        | git add .               |
| `]gs`        | git status              |
| `]grh`       | git reset --hard HEAD~1 |
| `]grs`       | git reset --soft HEAD~1 |
| `]cd`        | code .                  |

### Guids

This code snippet will generate a random Guid, sets value to the clipboard and pastes it's value

| Abbreviation | Example Phrase                       |
| ------------ | ------------------------------------ |
| `]guid`      | 749ca6ae-1d23-bf9d-4f45-d5ec74b57d03 |

## Hotkeys

### Ctrl + F9

Pressing Ctrl + F9 will trigger an action depending on active window.

Default behaviour: Reads and returns text file on C:\Users\<Username>\Hotkeys\ctrl_f9.txt

| Active Window                    | Action                              |
| -------------------------------- | ----------------------------------- |
| `Visual Studio Code`             | Autoformat code using prettier      |
| `Visual Studio`                  | Autoformat code                     |
| `Microsoft SQL Managment Studio` | Filter default database             |
| `Github Desktop`                 | Open browser on selected repository |

### Shift + F9

Pressing Shift + F9 will trigger an action depending on active window.

Default behaviour: Reads and returns text file on C:\Users\<Username>\Hotkeys\shift_f9.txt

| Active Window    | Action                            |
| ---------------- | --------------------------------- |
| `Github Desktop` | Open Visual Studio Code on folder |

### Alt + F9

Pressing Alt + F9 will trigger an action depending on active window.

Default behaviour: Reads and returns text file on C:\Users\<Username>\Hotkeys\alt_f9.txt

| Active Window    | Action                                    |
| ---------------- | ----------------------------------------- |
| `Github Desktop` | Shows repository local folder on explorer |

### Ctrl + Shift + F9

This hotkey will pop up a message box displaying hex color code on mouse hover

## License

MIT
