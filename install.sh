#!/usr/bin/env bash

sudo bash -c "install -Dm644 -v terminal-url-handler-workaround.desktop /usr/share/applications/terminal-url-handler-workaround.desktop
sudo install -Dm644 -v terminal-url-handler.desktop /usr/share/applications/terminal-url-handler.desktop
sudo install -Dm755 -v terminal-url-workaround /usr/local/bin/terminal-url-workaround
sudo install -Dm755 -v terminal-url-open /usr/local/bin/terminal-url-open"

xdg-mime default terminal-url-handler-workaround.desktop x-scheme-handler/term
xdg-mime default terminal-url-handler.desktop x-scheme-handler/termrun

if [ "$EUID" == "0" ]; then 
    echo -e "\nRun following commands as your user to set handlers:"
    echo "    xdg-mime default terminal-url-handler-workaround.desktop x-scheme-handler/term
    xdg-mime default terminal-url-handler.desktop x-scheme-handler/termrun"
    exit
fi

