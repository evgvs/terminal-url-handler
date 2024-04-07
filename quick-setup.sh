#!/usr/bin/env bash
rm -rf /tmp/terminal-url-handler-repo
git clone https://github.com/evgvs/terminal-url-handler /tmp/terminal-url-handler-repo
cd /tmp/terminal-url-handler-repo || exit
bash ./install.sh