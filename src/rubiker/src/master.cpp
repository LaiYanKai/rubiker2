#include <ros/ros.h>
#include <stdlib.h>
#include "std_msgs/Int32.h"

#define THRESH 3

int degFW = 0;
int degBH = 0;
int degFH = 0;
int degBW = 0;

void cbDegFW(const std_msgs::Int32::ConstPtr& msg)
{
   degFW = msg->data;
}
void cbDegBH(const std_msgs::Int32::ConstPtr& msg)
{
   degBH = msg->data;
}
void cbDegFH(const std_msgs::Int32::ConstPtr& msg)
{
   degFH = msg->data;
}
void cbDegBW(const std_msgs::Int32::ConstPtr& msg)
{
   degBW = msg->data;
}

// W1C3
// W4C2
int main(int argc, char **argv) {
    ros::init(argc, argv, "master");
    ros::NodeHandle nm;

    ros::Publisher pub_target5 = nm.advertise<std_msgs::Int32>("targetFW", 1, true);
    ros::Publisher pub_target6 = nm.advertise<std_msgs::Int32>("targetBH", 1, true);
    ros::Publisher pub_target7 = nm.advertise<std_msgs::Int32>("targetFH", 1, true);
    ros::Publisher pub_target8 = nm.advertise<std_msgs::Int32>("targetBW", 1, true);
    ros::Subscriber sub_deg5 = nm.subscribe("degFW", 1, cbDegFW);
    ros::Subscriber sub_deg6 = nm.subscribe("degBH", 1, cbDegBH);
    ros::Subscriber sub_deg7 = nm.subscribe("degFH", 1, cbDegFH);
    ros::Subscriber sub_deg8 = nm.subscribe("degBW", 1, cbDegBW);


    ros::Rate looper(10);

    std_msgs::Int32 msg;

    while(ros::ok())
    {
        looper.sleep();
        ros::spinOnce();
    }
}
