#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
sudo ip ad add 10.0.0.2/24 dev eth0
sudo ip link set dev eth0 up
export ROS_MASTER_URI=http://10.0.0.1:11311
export ROS_HOSTNAME=10.0.0.2

#		MTR	K(BCM)	W(BCM)	Y(BCM)	B(BCM)	KP	KI	KD	ErrThrs	LR Verbose
export MotorFH="FH	3	2	18	23	2	0.001	2	5	40 0"
export MotorBH="BH	25	24	27	16	2	0.001	2	5	40 0"
export MotorFW="FW	7	8	20	21	2	0.001	3	5	40 1"
export MotorBW="BW	6	5	19	13	2	0.001	3	5	40 1"
export MotorPP="PP	22	10	11	9	0.2	0.001	0.3	5	40 0"
roslaunch rubiker2 run.launch

