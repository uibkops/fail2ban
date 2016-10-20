#!/usr/bin/env bash

pattern='if [ -f /etc/container_environment.sh ]; then source /etc/container_environment.sh; fi'

if ! grep -Fxq '$pattern' /root/.bashrc ; then
    echo -e "$pattern" >> /root/.bashrc
fi

