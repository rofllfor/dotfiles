#!/bin/bash

updates_arch=$(checkupdates 2> /dev/null | wc -l)
updates_aur=$(yay -Qu --aur 2> /dev/null | wc -l)

updates=$(("$updates_arch" + "$updates_aur"))
echo $updates
