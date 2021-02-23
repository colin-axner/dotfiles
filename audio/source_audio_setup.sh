#!/bin/bash
#
# docs: https://wiki.archlinux.org/index.php/JACK_Audio_Connection_Kit#Network_/_remote_audio
#
# This script makes it easy to setup a source in a networked audio connection using the jack2
# network manager. It will redirect any audio sent into a systems playback to the sink which 
# is listening on the network. 
#
# I run this script at boot with a cron job. To do this, run 'crontab -e', then add:
# @reboot ~/bin/source_audio_setup.sh
#
# Assuming this file is in ~/bin.
#
# Please ensure you have correctly setup your .jackdrc configuration file. 
#
# Usage
# source_audio_setup 
# Dependencies: jack2, tmux
#
session="audio"

# set up tmux
tmux start-server
tmux new-session -d -s $session

# Start jack in the background
tmux new-window -t $session:1 -n jack 
tmux send-keys -t $session:1 "jackd -d net" Enter 
