#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing development software"
echo "################################################################"

# IDE's and Software
aurinstall intellij-idea-ultimate-edition
aurinstall visual-studio-code-bin
aurinstall sublime-text-4
aurinstall gitahead-bin

aurinstall jdk11-temurin
aurinstall jdk-temurin

aurinstall podman
ln -s /run/user/$(id -u)/podman/podman.sock /var/run/user/$(id -u)/docker.sock



echo "################################################################"
echo "################### desktop development installed"
echo "################################################################"
echo ""