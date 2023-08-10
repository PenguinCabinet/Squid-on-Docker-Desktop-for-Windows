@echo off
if exist squid (
    echo ERROR:Squid directory exists. Do not overwrite.
) else (
    docker rm -f squid
    set CURRENT_DIR=%~dp0
    set CURRENT_DIR=%CURRENT_DIR:~0,-1%
    docker container run -itd --privileged --hostname squid --name squid -d -p 64000:3128 squid:test-tag

    docker ps --filter name=squid --format "{{.ID}}" >temp.txt 
    set /p id= 0<temp.txt

    docker cp -a "%id%":/etc/squid .

    docker rm -f squid
    del temp.txt
)
