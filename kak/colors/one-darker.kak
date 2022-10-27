# One Darker
# This theme is a personalized implementation of One Dark.
# Changes include:
# - Dardarkker ba3398eand color
# - Variables are white instead of red
# - Operators are red instead of white
# - Comments are more visible

# COLORS
declare-option str fg "abb2bf"
declare-option str bg "08090a"
declare-option str subbg "454a54"

declare-option str lightred "e06c75"
declare-option str darkred "be5046"
declare-option str green "98c379"
declare-option str lightorange "e5c07b"
declare-option str darkorange "d19a66"
declare-option str blue "61afef"
declare-option str magenta "c678dd"
declare-option str cyan "56b6c2"

declare-option str comment "70798a"
declare-option str hint "ffffff"

declare-option str cursoralpha "80"
declare-option str selectionalpha "40"

# Menus do not support transparency, so we must hardcode the selection + sub bg colors
declare-option str menuselection "344b61"

# CODE
set-face global value "rgb:%opt{darkorange}"
set-face global type "rgb:%opt{lightorange}"
set-face global variable "rgb:%opt{fg}"
set-face global module "rgb:%opt{lightorange}"
set-face global function "rgb:%opt{blue}"
set-face global string "rgb:%opt{green}"
set-face global keyword "rgb:%opt{magenta}"
set-face global operator "rgb:%opt{lightred}"
set-face global attribute "rgb:%opt{cyan}"
set-face global comment "rgb:%opt{comment}"
set-face global documentation "rgb:%opt{comment}"
set-face global meta "rgb:%opt{cyan}"
set-face global builtin "rgb:%opt{lightorange}"

# MARKUP
set-face global title "rgb:%opt{darkorange}"
set-face global header "rgb:%opt{green}"
set-face global mono "rgb:%opt{cyan}"
set-face global block "rgb:%opt{magenta}"
set-face global link "rgb:%opt{blue}"
set-face global bullet "rgb:%opt{lightorange}"
set-face global list "rgb:%opt{fg}"

# BUILTIN
set-face global Default "rgb:%opt{fg},rgb:%opt{bg}"
set-face global PrimarySelection "default,rgba:%opt{blue}%opt{selectionalpha}"
set-face global SecondarySelection "default,rgba:%opt{green}%opt{selectionalpha}"
set-face global PrimaryCursor "default,rgba:%opt{blue}%opt{cursoralpha}"
set-face global SecondaryCursor "default,rgba:%opt{green}%opt{cursoralpha}"
set-face global PrimaryCursorEol "default,rgba:%opt{lightred}%opt{cursoralpha}"
set-face global SecondaryCursorEol "default,rgba:%opt{darkorange}%opt{cursoralpha}"
set-face global LineNumbers "rgb:%opt{comment}"
set-face global LineNumberCursor "rgb:%opt{darkorange}"
set-face global LineNumbersWrapped "rgb:%opt{bg},rgb:%opt{bg}"
set-face global MenuForeground "rgb:%opt{fg},rgb:%opt{menuselection}"
set-face global MenuBackground "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global MenuInfo "rgb:%opt{green}"
set-face global Information "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global Error "rgb:%opt{lightred}"
set-face global StatusLine "rgb:%opt{fg},rgb:%opt{subbg}"
set-face global StatusLineMode "rgb:%opt{darkorange}"
set-face global StatusLineInfo "rgb:%opt{blue}"
set-face global StatusLineValue "rgb:%opt{fg}"
set-face global StatusCursor "default,rgba:%opt{blue}%opt{cursoralpha}"
set-face global Prompt "rgb:%opt{blue}"
set-face global MatchingChar "default,rgb:%opt{subbg}"
set-face global BufferPadding "rgb:%opt{bg},rgb:%opt{bg}"
set-face global Whitespace "rgb:%opt{comment}"

# For backwards compatibility
define-command -override -hidden one-enable-fancy-underlines %{
    echo -debug "one-enable-fancy-underlines is deprecated - curly underlines are enabled by default"
}
