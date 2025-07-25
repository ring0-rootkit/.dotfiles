#!/bin/bash

cp cursor.desktop ~/.local/share/applications
desktop-file-install --dir="~/.local/share/applications" cursor.desktop
update-desktop-database ~/.local/share/applications
