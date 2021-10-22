#!/bin/bash

function vpn1() {
    gnome-terminal -- /bin/sh -c 'cd /home/msalah/cisco/; node /home/msalah/cisco/vpn1.js;sleep 5;';
}

function dcvpn1() {
    gnome-terminal -- /bin/sh -c 'cd /home/msalah/cisco/; node /home/msalah/cisco/disconnect-vpn1.js;sleep 5;';
}

function vpn2() {
    gnome-terminal -- /bin/sh -c 'cd /home/msalah/cisco/; node /home/msalah/cisco/vpn2.js;sleep 5;';
}

function dcvpn2() {
    gnome-terminal -- /bin/sh -c 'cd /home/msalah/cisco/; node /home/msalah/cisco/disconnect-vpn2.js;sleep 5;';
}

case "$1" in
    vpn1)   vpn1 ;; # connect vpn1
    dcvpn1)    dcvpn1 ;; # disconnect vpn1
    vpn2)   vpn2 ;; # connect vpn2
    dcvpn2)    dcvpn2 ;; # disconnect vpn2
    rvpn1) dcvpn1; sleep 2; vpn1 ;; # reconnect vpn1
    rvpn2) dcvpn2; sleep 2; vpn2 ;;# reconnect vpn2
    *) echo "usage: $0 vpn1|dcvpn1|vpn2|dcvpn2|rvpn1|rvpn2" >&2
       exit 1
       ;;
esac
