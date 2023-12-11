#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from turtlebot_archnoid.msg import cool

class extractor:
    def __init__(self) -> None:
        rospy.init_node('extractor',anonymous=True)

        self.pub = rospy.Publisher('cmd_vel',Twist,queue_size=10)

        rospy.Subscriber('command_gateway',cool,self.clbk)

    def clbk(self,data):
        rospy.loginfo(f"{data}")

        velocity=Twist()

        input_value= data.cmd.lower()
        
        if input_value=='forward':
            velocity.linear.x=data.speed
        elif input_value=='backward':
            velocity.linear.x=-data.speed
        elif input_value=='left':
            velocity.angular.x=data.speed
        elif input_value=='right':
            velocity.angular.x=-data.speed
        else:
            pass
        
        self.pub.publish(velocity)

if __name__=='__main__':
    node= extractor()
    rospy.spin()
