#!/usr/bin/env bash


echo 'set incremental-search true

set default-bg "'$( get_xres color0 )'"
set default-fg "'$( get_xres color7 )'"

set completion-bg "'$( get_xres color0 )'"
set completion-fg "'$( get_xres color7 )'"
set completion-highlight-bg "'$( get_xres color4 )'"
set completion-highlight-fg "'$( get_xres color7 )'"

set statusbar-bg "'$( get_xres color4 )'"
set statusbar-fg "'$( get_xres color0 )'"

set inputbar-bg "'$( get_xres color0 )'"
set inputbar-fg "'$( get_xres color7 )'"

set window-height "800"
set window-width "600"

set adjust-open "width"
set smooth-scroll true

set font "SF Mono 11"

' > ~/.config/zathura/zathurarc
