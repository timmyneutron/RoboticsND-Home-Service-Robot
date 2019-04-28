#!/bin/sh
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/RoboticsND-Home-Service-Robot/src/worlds/timsWorld.world " &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/RoboticsND-Home-Service-Robot/src/maps/map.yaml" &
sleep 5
xterm -e "rosrun rviz rviz -d /home/workspace/RoboticsND-Home-Service-Robot/src/rviz/navigation_with_markers.rviz" &
sleep 5
xterm -e "rosrun add_markers add_markers"
