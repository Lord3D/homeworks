FROM busybox:latest
LABEL maintainer="Sasha Skokov <lord3d@mail.ru>"

ADD docker.html /www/index.html
ADD docker.js /www/js/flappyBird.js
ADD docker.js /www/flappyBird.js
ADD bg.png /www/images/bg.png
ADD bird.png /www/images/bird.png
ADD fg.png /www/images/fg.png
ADD pipeNorth.png /www/images/pipeNorth.png
ADD pipeSouth.png /www/images/pipeSouth.png
ADD fly.mp3 /www/sounds/fly.mp3
ADD score.mp3 /www/sounds/score.mp3


EXPOSE 80
HEALTHCHECK CMD nc -z localhost 80

# Create a basic webserver and run it until the container is stopped
CMD trap "exit 0;" TERM INT; httpd -p 80 -h /www -f & wait
