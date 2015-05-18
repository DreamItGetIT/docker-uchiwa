#!/bin/sh

UCHIWA_CONFIG=/opt/uchiwa.json
PUBLIC_DIR=/opt/uchiwa/src/public

/opt/uchiwa/bin/uchiwa -c $UCHIWA_CONFIG -p $PUBLIC_DIR | tee /var/log/uchiwa.log
