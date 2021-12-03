; https://github.com/usuyama/emacs-like-key-bindings-windows
;;
;; An autohotkey script that provides gtk-emacs-key-theme like keybinding on Windows
;; forked from https://github.com/usi3/emacs.ahk
;;
#InstallKeybdHook
#UseHook

; The following line is a contribution of NTEmacs wiki http://www49.atwiki.jp/ntemacs/pages/20.html
SetKeyDelay 0

is_target()
{
  IfWinActive,ahk_class Vim ; GVIM
    Return 1
  IfWinActive,ahk_exe Code.exe ; VS Code
    Return 1
  Return 0
}

;
; <ctrl>b
; move cursor backward
;
^b::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Left}
  Return

;
; <ctrl>f
; move cursor forward
;
^f::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Right}
  Return  

;
; <ctrl>p
; move cursor up
;
^p::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Up}
  Return

;
; <ctrl>n
; move cursor down
;
^n::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Down}
  Return

;
; <ctrl>d
; delete following char
;
^d::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Del}
  Return

;
; <ctrl>h
; delete previous char(Backspace)
;
^h::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {BS}
  Return

;
; <ctrl>a
; move cursor beginning of current line
;
^a::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Home}
  Return

;
; <ctrl>e
; move cursor end of current line
;
^e::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {End}
  Return


;
; <ctrl>m
; new line(enter)
;
^m::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send {Enter}
  Return
;
; <ctrl>\
; select all
;
!a::
  If is_target()
    Send %A_ThisHotkey%
  Else
    Send ^a
  Return
