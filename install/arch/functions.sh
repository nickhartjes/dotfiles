#!/bin/bash

function install {
    sudo pacman -S --noconfirm --needed $@
}

function remove {
    sudo pacman -Rs --noconfirm $@
}

function aurinstall {
    paru -S --noconfirm --needed $@
}
