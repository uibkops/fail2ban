# fail2ban

This container installs fail2ban on 0.10 an Ubunto 16.04.
[Phusion Baseimage]: https://github.com/phusion/baseimage-docker is used to handle things with docker correctly.
Fail2ban is started in foreground mode. (since 0.10)

Fail2ban runs in host networking mode and in privileged mode in order to manipulate some iptables rules on the host.

## Instructions for Use

Modify docker-compose.yml and set the volumes to some logs you want to monitor. Notrmally these logs will be volumes mounted in some other containers.
Add a <servce>.conf file in jail.d.

start the container with
```
docker-compose up
```
## Instructions for Build
```
docker build -t fail2ban  .
```
