xhost +
docker run -it --rm \
  --name limo_gazebo_humble \
  --gpus all \
  --network host \
  --ipc host \
  --device /dev/dri:/dev/dri \
  -e DISPLAY="$DISPLAY" \
  -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/dong/Documents/LIMO_GAZEBO:/home/dong/Documents/LIMO_GAZEBO \
  yspark98/limo:gazebo_humble \
  bash
