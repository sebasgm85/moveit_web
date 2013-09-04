#!/bin/bash

robot_name="$1"

cp move_group.launch current_move_group.launch
sed "s/#robot/$robot_name/g" move_group.launch > current_move_group.launch
roslaunch moveit_web current_move_group.launch 


