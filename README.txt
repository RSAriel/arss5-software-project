xhost +local:docker
docker run -it \ --env DISPLAY=$DISPLAY \ --volume /tmp/.X11-unix:/tmp/.X11-unix \ --name container_name \ image_name bash
