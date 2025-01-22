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
