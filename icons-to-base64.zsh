#!/usr/bin/env zsh

typeset -A mimetypes
mimetypes=(
  png image/png
)

style() {
  echo "  &.$1:t:r
    background: url(data:$mimetypes[$1:e];base64,$(base64 -w0 $1)) 0 0 no-repeat
"
}

run() {
  for icon in $0:A:h/images/*(.)
    style $icon

  echo ".light .icon"
  for icon in $0:A:h/images/light/*(.)
    style $icon .light

  echo ".dark .icon"
  for icon in ${0:A:h}/images/dark/*(.)
    style $icon .dark
}

echo "
.icon
  display: inline-block
  width: 16px
  height: 16px
  opacity: 0.8
  margin: 1px 0px -3px 0px
" >_sass/icons.sass

run >>$0:A:h/_sass/icons.sass
