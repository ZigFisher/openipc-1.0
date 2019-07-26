#!/bin/bash
if [ ! -d feeds ]
then
   ./scripts/feeds update -a
   ./scripts/feeds install -a
fi

./Project_OpenIPC.sh allsmartfrog | tee build-all.log
