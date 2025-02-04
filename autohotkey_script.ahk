#Requires AutoHotkey v2.0

; # Win (Windows logo key)
; ! Alt
; ^ Ctrl
; + Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

userprofile := EnvGet("userprofile")

browser := "zen.exe"
music := userprofile "\AppData\Roaming\Spotify\Spotify.exe"
editor := userprofile "\AppData\Local\Programs\Microsoft VS Code\Code.exe"
terminal := "wt.exe"

; (Alt+B) Open Browser
!b:: {
    Run browser
}

; (Alt+C) Open Visual Studio Code
!c:: {
    Run editor
}

; (Alt+Z) Open Music App
!z:: {
    Run music
}

; (Alt+Enter) Open Terminal
!Enter:: {
    Run terminal
}

; (Alt+Shift+Enter) Open Terminal as Administrator
!+Enter:: {
    Run terminal ' new-tab --profile "konsole admin"'
}

; (Alt+Shift+?) Open the image
!+?:: {
    try
        Run 'open "C:\Users\benie\Pictures\sei_das_problem.png"'
    catch
        MsgBox "File does not exist."
}
