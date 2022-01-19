#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
sudo ip addr add 10.0.0.2/24 dev eth0
sudo ip link set dev eth0 up
export ROS_MASTER_URI=http://10.0.0.1:11311
export ROS_HOSTNAME=10.0.0.2

# 		MTR	K(BCM)	W(BCM)	Y(BCM)	B(BCM)	KP	KI	KD	ErrThrs	LR Verbose
export MotorFH="FH	3	2	23	18	0.5	0.01	0.5	5	40 0" #M1 #+Close -Open
export MotorBH="BH	25	24	16	27	0.5	0.01	0.5	5	40 0" #M2 #+C -O
export MotorFW="FW	7	8	21	20	2	0.001	3	5	40 0" #M3 #+ACW -CW
export MotorBW="BW	6	5	13	19	2	0.001	3	5	40 0" #M4 #+ACW -CW
export MotorPP="PP	10	22	11	9	0.15	0.000	0.0	5	40 0" #M5 #+D -U
roslaunch rubiker run.launch
