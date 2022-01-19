#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
#sudo ip ad add 10.0.0.2/24 dev eth0
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

# 		MTR	K(BCM)	W(BCM)	Y(BCM)	B(BCM)	KP	KI	KD	ErrThrs	LR Verbose
#export Motor="FH	3	2	23	18	2.0	0.01	2.0	5	40 1" #M1 #+Close -Open
#export Motor="BH	25	24	16	27	1.0	0.01	2.0	5	40 1" #M2 #+C -O
#export Motor="FW	7	8	21	20	2	0.001	3	5	40 1" #M3 #+ACW -CW
#export Motor="BW	6	5	13	19	2	0.001	3	5	40 1" #M4 #+ACW -CW
export Motor="PP	10	22	11	9	0.15	0.000	0.0	5	40 1" #M5 #+D -U
roslaunch rubiker test.launch
