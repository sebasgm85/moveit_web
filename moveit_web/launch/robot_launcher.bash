#!/bin/bash


if [ -n "$1" ]; then
    robot_name="$1"
else
    robot_name="pr2"
fi

echo $robot_name

if [ -n "$2" ]; then
    pr2_robot="$2"
else
    if [ robot_path = "pr2" ]; then
        pr2_robot=true
    else
        pr2_robot=false
    fi
fi

#echo $pr2_robot

sed -i "s/#robot/$robot_name/g" move_group.launch

#cat move_group.launch
roslaunch moveit_web move_group.launch #pr_two_name:=$pr2_robot

sleep 10

sed -i "s/$robot_name/#robot/g" move_group.launch

#REMOVE
#sed -i 's/pr2/robot/g' move_group.launch
#sed -i 's/baxter/robot/g' move_group.launch
#cat move_group.launch
