#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing security software"
echo "################################################################"

# Firewall
install gufw
install ufw

# System hardening and audit software
aurinstall lynis
install arch-audit

install rkhunter
aurinstall chkrootkit

echo "################################################################"
echo "################### security software installed"
echo "################################################################"
echo ""
