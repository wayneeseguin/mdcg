#!/bin/bash

openvpn --mktun --dev tap0
sleep 2
brctl addif br0 tap0
sleep 1
ifconfig tap0 0.0.0.0 promisc up
