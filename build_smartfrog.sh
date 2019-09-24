#!/bin/bash
if [ ! -d feeds ]; then
./scripts/feeds update -a
./scripts/feeds install -a
fi

nice ./Project_OpenIPC.sh smartfrog 
