#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
#sudo ip ad add 10.0.0.2/24 dev eth0
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

# MTR PIN_K(BCM) PIN_W(BCM) PIN_Y(BCM) PIN_B(BCM) KP KI KD AcceptableError Verbose
export Motor="PP 22 10 11 9 0.15 0.000 0.0 5 1"
roslaunch rubiker test_platform.launch

#echo "================= RESETING ===================="
#source reset.sh
