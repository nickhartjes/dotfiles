#!/bin/bash

source ~/.dotfiles/install/arch/functions.sh

echo "################################################################"
echo "################### installing development software"
echo "################################################################"

# IDE's and Software
aurinstall intellij-idea-ultimate-edition
aurinstall intellij-idea-ultimate-edition-jre
aurinstall visual-studio-code-bin
aurinstall sublime-text-4

# Git
aurinstall gitahead-bin

#MySQL
aurinstall mysql-workbench

# Java
aurinstall jdk17-temurin
aurinstall jdk-temurin

# Node
aurinstall nvm
nvm install --lts

# Angular
npm install -g @angular/cli

# Docker alternative
aurinstall podman
aurinstall podman-docker
aurinstall podman-compose
ln -s /run/user/$(id -u)/podman/podman.sock /var/run/user/$(id -u)/docker.sock

echo "################################################################"
echo "################### development installed"
echo "################################################################"
echo ""
