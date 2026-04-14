#!/bin/bash

# +%s ist das Format seconds since the Epoch (1970-01-01 00:00 UTC)
jetzt=$(date +%s)

# benutzt das datum vom htl-ball
htlball=$(date +%s --date "2027-1-16")

# differenz ausrechnen
differenz=$(($htlball - $jetzt))

# in Tage umwandeln
echo "$(($differenz/(3600*24)))"

