#!/usr/bin/env bash

sed -i "s/maxretry = 5/maxretry = 20/" /etc/fail2ban/jail.conf
