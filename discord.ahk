#SingleInstance, Force              ;Forces the script to only run once
SetBatchLines, -1                      ;Makes the script run faster
SetKeyDelay, 10, 10                  ;Makes the script run faster and more reliable
msgBox, The script is active!      ;Let the user know the script is active

DELETE::                                  ;the Delete key on your keyboard
Loop, {
    If !GetKeyState("DELETE", "p")        ;If it isn't pressed, stop
        return
    Send, {up}^{a}{backspace}{enter}{enter}              ;do the message delete thing
    Sleep, 125                            ;Sleep a little bit for discord to catch up
}
return