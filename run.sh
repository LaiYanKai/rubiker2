#PARAMETERS
source devel/setup.bash
echo "BASH SOURCED"
sudo ip ad add 10.0.0.2/24 dev eth0

# MTR PIN_K(BCM) PIN_W(BCM) PIN_Y(WPI/Name) PIN_B(WPI/Name) KP KI KD
export M5="5 2 3 7 0 0.4 0.05 0.35"
export M6="6 6 13 24 25 0.4 0.05 0.35"
export M7="7 14 15 1 4 0.4 0.05 0.35"
export M8="8 1 12 27 28 0.4 0.05 0.35"
roslaunch rubiker rubiker.launch

echo "================= RESETING ===================="
source reset.sh
