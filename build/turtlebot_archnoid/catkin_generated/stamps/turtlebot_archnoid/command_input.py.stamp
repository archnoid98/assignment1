#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from turtlebot_archnoid.msg import cool

class commander :


    def __init__(self) -> None:

        rospy.init_node('commander',anonymous=True)
        self.pub=rospy.Publisher('command_gateway',cool,queue_size=10)

    def value_input(self,data):
        
        rospy.loginfo(f"{data.cmd} {data.speed}")
        
        self.pub.publish(data)
    
    def run(self):

        rospy.loginfo(f'commanderNode running')
        

        while not rospy.is_shutdown():

            message = input('INPUT = ')
            message=message.split()

            value=cool()
            value.cmd = message[0]
            value.speed =int(message[1])

            self.value_input(value)
            
            rospy.sleep(1)

if __name__=='__main__':
    node=commander()
    node.run()