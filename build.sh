#!/bin/bash

FULL_VESRION="$(cat < 'full_version.txt')-regen-dh"

docker build -t alekslitvinenk/openvpn:$FULL_VESRION -t alekslitvinenk/openvpn:latest . --no-cache
docker push alekslitvinenk/openvpn:$FULL_VESRION
docker push alekslitvinenk/openvpn:latest

echo $FULL_VESRION