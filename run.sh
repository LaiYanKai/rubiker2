#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
sudo ip ad add 10.0.0.2/24 dev eth0

# MTR PIN_K(BCM) PIN_W(BCM) PIN_Y(WPI/Name) PIN_B(WPI/Name) KP KI KD
export MotorFH="FH 2 3 7 0 1.0 0.1 1.0"
export MotorBH="BH 5 6 23 24 1.0 0.1 1.0"
export MotorFW="FW 14 15 1 4 1.0 0.1 1.0"
export MotorBW="BW 12 16 28 29 1.0 0.1 1.0"
roslaunch rubiker rubiker.launch

echo "================= RESETING ===================="
source reset.sh
