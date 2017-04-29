#!/bin/bash
# --pkg webkit2gtk-4.0\
valac --pkg gtk+-3.0\
  --pkg webkit2gtk-4.0\
  --thread\
  src/window.vala\
  src/main.vala\
  -o build/gamesview
