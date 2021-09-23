[docker ubuntu vnc](https://github.com/fcwu/docker-ubuntu-vnc-desktop)

docker run -p 6081:80 -p 5901:5900 -d -e RESOLUTION=1800x1012  -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc:focal
