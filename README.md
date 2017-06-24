# kag-server
Dockerfile to run a local *King Arthur's Gold* Server


This image is also built automatically on DockerHub ( https://hub.docker.com/r/gpimblott/kag-server/ ).

* docker pull gpimblott/kag-server
* docker build . -t gpimblott/kag-server
* docker run -p 50301:50301 -p 50301:50301/udp -d -t gpimblott/kag-server
