#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
#sudo ip ad add 10.0.0.2/24 dev eth0
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

# 		MTR	K(BCM)	W(BCM)	Y(BCM)	B(BCM)	KP	KI	KD	ErrThrs	LR Verbose
#export Motor="FH	3	2	18	23	2.0	0.01	2.0	5	40 1"
#export Motor="BH	25	24	27	16	1.0	0.01	2.0	5	40 1"
export Motor="FW	7	8	21	20	2	0	2	5	40 1"
#export Motor="BW	6	5	19	13	1.5	0.001	2.0	5	40 1"
#export Motor="PP	22	10	11	9	0.15	0.000	0.0	5	40 1"
roslaunch rubiker2 test.launch
