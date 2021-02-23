#!/bin/bash
#
# docs: https://wiki.archlinux.org/index.php/JACK_Audio_Connection_Kit#Network_/_remote_audio
#
# This script makes it easy to setup a sink in a networked audio connection using the jack2
# network manager. It will listen to audio being sent across the network and then output it
# to its physical device. 
#
# I run this script at boot with a cron job. To do this, run 'crontab -e', then add:
# @reboot ~/bin/sink_audio_setup.sh
#
# Assuming this file is in ~/bin.
#
# Please ensure you have correctly setup your .jackdrc configuration file. 
#
# Usage
# sink_audio_setup 
# Dependencies: jack2, tmux
#
session="audio"

# set up tmux
tmux start-server
tmux new-session -d -s $session

# Start jack in the background
tmux new-window -t $session:1 -n jack 
tmux send-keys -t $session:1 "jack_load netmanager -i -c" Enter 
