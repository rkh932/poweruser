export TouchPadID=$(xinput | grep 'TouchPad' | sed  -n "s/^.*id=\([[:digit:]]\+\).*$/\1/p")
xinput set-prop $TouchPadID "Device Enabled" 0
