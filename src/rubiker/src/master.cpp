#include <ros/ros.h>
#include <stdlib.h>
#include "std_msgs/Bool.h"
#include <wiringPi.h>
#include <softPwm.h>

#define THRESH 3
bool stop = false;
void cbStop(const std_msgs::Bool::ConstPtr& msg) 
{
    stop = msg->data;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "master");
    ros::NodeHandle nm;
    wiringPiSetupGpio();
    
    //advertise a stop so that it appears right at the start
    ros::Publisher pub_stop = nm.advertise<std_msgs::Bool>("stop", 1, true);
    std_msgs::Bool msg;
    msg.data = false;
    pub_stop.publish(msg);

    ros::Subscriber sub_stop = nm.subscribe("stop", 1, cbStop);

    ros::Rate looper(10);

    while(ros::ok() && !stop)
    {
        looper.sleep();
        ros::spinOnce();
    }

    ROS_INFO_STREAM("Stop Received");

    std::vector<int> pins = {2, 3, 5, 6, 12, 14, 15, 16};
    std::vector<int> pins_pwm = {2, 5};

    for (auto i : pins)
    {
        pinMode(i, OUTPUT);
        digitalWrite(i,0);
    }

    for (auto i : pins_pwm)
    {
        softPwmCreate(i, 0, 100);
        softPwmWrite(i, 20);
    }

    ros::Duration(5).sleep();

    for (auto i : pins_pwm)
    {
        softPwmWrite(i, 0);
    }

    ROS_INFO_STREAM("SLAVE Resetted");
}

