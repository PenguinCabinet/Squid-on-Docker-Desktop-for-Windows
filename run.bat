@echo off
docker rm -f squid
set WorkingDir=%~dp0
set WorkingDir=%WorkingDir:~0,-1%
docker container run -v "%WorkingDir%\squid":/etc/squid -itd --privileged --hostname squid --name squid --restart=always -d -p 64000:3128 squid:test-tag
