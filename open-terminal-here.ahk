; trigger - ctrl alt t

; if explorer window is active, open terminal there
#IfWinActive ahk_class ExploreWClass
^!t::
#IfWinActive ahk_class CabinetWClass
^!t::
    ; alt d selects address bar, ctrl c to copy path, wt.exe is the terminal
    send, !d
    send, ^c
    run, wt.exe
    WinWaitActive, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
    Sleep, 2000
    send, cd " 
    send, ^v
    send, "{enter}
    send, ^l
return
#IfWinActive
^!t::
run, wt.exe
WinWaitActive, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
send, ^l
return
