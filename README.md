# fail2ban

This container installs fail2ban 0.10 together with runsv on an Ubunto 16.04.
[Phusion Baseimage]: https://github.com/phusion/baseimage-docker is used to handle things with docker correctly.
Fail2ban is started in foreground mode. (since 0.10)

Fail2ban runs in host networking mode and in privileged mode in order to manipulate some iptables rules on the host.

## Instructions for Use

Modify docker-compose.yml and set the volumes to some logs you want to monitor. Normally these logs will be volumes mounted in some other containers.
Add a <service>.conf file in jail.d - set aenabled to true mainly - and optionally a <servicefilter> file in filter.d and mount it as volumes.

Right now fail2ban starts up with some defaults for bantim, maxretries and findtime. If you want to change them, you have to replace jail.conf. See this Blog post: https://www.jimwilbur.com/2016/08/fail2ban_guacamole/



start the container with
```
docker-compose up
```
## Instructions for Build
```
docker build -t fail2ban  .
```
