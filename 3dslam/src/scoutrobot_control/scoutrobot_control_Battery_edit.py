#!/usr/bin/env python
import rospy

from geometry_msgs.msg import Twist
from std_msgs.msg import Empty
from nav_msgs.msg import Odometry # from /opt/ros/indigo/share/nav_msgs/cmake
from sensor_msgs.msg import Imu   # from opt/ros/indigo/share/nav_msgs/cmake
from ardrone_autonomy.msg import Navdata
from sensor_msgs.msg import LaserScan

from math import e, pi, isinf
from itertools import *
from operator import itemgetter
from std_msgs.msg import String
import random
import numpy as np
from itertools import *
from operator import itemgetter
import copy
import time
import getch


import roslib; roslib.load_manifest('teleop_twist_keyboard')

import sys, select, termios, tty

# x=0
# y=0
# z=0
# yaw=0

# Rotation info:
# 15deg = 0.262rad
# 30deg = 0.523598
# 45deg = 0.785397
# 60deg = 1.047196
# 75deg = 1.308995
# 90deg = 1.570794

#Degree Conversion:
#1rad = 57.2958deg
#1deg = 0.0174533rad



LINX = 0.0 #Always forward linear velocity.
THRESHOLD = 1.5 #THRESHOLD value for laser scan.
PI = 3.14
Kp = 0.05
angz = 0
temp = 0
counter = 0
turnedBack = False





class DroneAutoFlight():

    front = 0
    left = 0
    right = 0
    _msg = []
    turn_value = 0.262
    max_left =0
    max_right =0
    Battery_life = 0
    Rotation_from_Origin = 0
    turnedBack = False
    battery_has_control = 0
    e_land = 0
    warned = 0
    

    #counter = 0
    #temp = 0


    def __init__(self):
        rospy.init_node('drone_autonomy') # For a publisher, the name of node is same as file. Anonymouse means a random number will be appended to the name of the node such that if another node with same name is launched, both of them will be able to run 
        self.takeoff_command = rospy.Publisher("/ardrone/takeoff", Empty, queue_size=1) #(name of topic, message type, queue size - helps subscribers to have space and time to process the message)
        self.land_command = rospy.Publisher("/ardrone/land", Empty,queue_size=1) #(name of topic, message type, queue size - helps subscribers to have space and time to process the message)
        self.nav_command = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        self.rate = rospy.Rate(2) #Two messages per second
        self.state_change_time = rospy.Time.now()    
        self.take_off_connections = self.takeoff_command.get_num_connections()
        rospy.on_shutdown(self.land)

        #self.odometry = rospy.Subscriber('/odom', Odometry, self.odom_callback) # the original name odom might be the same as other function.
        #self.imu = rospy.Subscriber('/ardrone/imu', Imu, self.imu_callback)
        #self.takeoff() 
        
        #rospy.spin() 

    def getKey(self):
    	tty.setraw(sys.stdin.fileno())
    	select.select([sys.stdin], [], [], 0)
    	key = sys.stdin.read(1)
    	termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    	return key

    def call_subscriber(self):
        if self.battery_has_control == 0:
            self.scan = rospy.Subscriber('/scan', LaserScan, self.laser_data) 
            self.navdata = rospy.Subscriber('/ardrone/navdata',Navdata, self.navdata_callback)
        rospy.spin()

    # def takeoff(self):
    #     self.takeoff_command.publish(Empty())
    #     self.rate.sleep()

    def takeoff(self):
        while self.take_off_connections <= 0:
            self.takeoff_command.publish(Empty())
            self.take_off_connections = self.takeoff_command.get_num_connections() #Two messages per second
            rospy.loginfo('Connections: %d', self.take_off_connections)
        #self.state_change_time = rospy.Time.now()    
        #rospy.on_shutdown(self.land)
        #self.scan = rospy.Subscriber("/lasoff_command.get_num_connections()
            
        
    
    def navigation(self,Lx,Ly,Lz,Ax,Ay,Az):
        
        self.position = Twist()
        self.position.linear.x = Lx
        self.position.linear.y = Ly
        self.position.linear.z = Lz
        self.position.angular.x = Ax
        self.position.angular.y = Ay
        self.position.angular.z = Az
        self.nav_command.publish(self.position)
        #self.rate.sleep()
    
    def land(self):
        self.navigation(0,0,0,0,0,0)	#stops drone movement
        self.land_command.publish(Empty())	#publishes empty message to ardrone/land_command initiating built-in automated landing sequence


    def odom_callback(self,msg):
        self.msg = msg
        print ("------------------------------------------------")
        print ("Position x = " + str(msg.pose.pose.position.x))
        print ("Position y = " + str(msg.pose.pose.position.y))
        print ("Orientacion x = " + str(msg.pose.pose.orientation.x))
        print ("Orientacion y = " + str(msg.pose.pose.orientation.y))
        #self.rate.sleep()
 
    def imu_callback(self,msg):
        self.msg =msg
        print ("------------------------------------------------")
        print ("Angular Velocity z = " + str(msg.angular_velocity.z))
        print ("Angular Velocity y = " + str(msg.angular_velocity.y))
        print ("Linear Acceleration x = " + str(msg.linear_acceleration.x))
        print ("Linear Acceleration y = " + str(msg.linear_acceleration.y))
        # self.rate.sleep()
    

    def pause(self):
  	print("Press any key to continue mission ")	#alerts human in the loop of what is required to continue mission
  	getch.getch()	#calls buitl-in python function to look for a keyboard input 
	return

#_________________Navigation Algorithm_____________________

    def laser_data(self, msg):
        print ("------------------------------------------------")
        self._msg = msg.ranges
       

        print ("Angle 0(directly ahead of the UAV):")
        front = msg.ranges[360]
        print (front)


        # # Rotation info:self.take_off_connections <= 0
        # deg_15 = 0.262
        # deg_30 = 0.523598
        # deg_45 = 0.785397
        # deg_60 = 1.047196
        # deg_75 = 1.308995

        deg_90 = 1.570794
        ndeg_90 = -abs(deg_90)


        # #READING AT NEGATIVE ANGLES - To the right of the drone
        right_15 = msg.ranges[420]
        #right_30 = msg.ranges[480]
        right_45 = msg.ranges[540]
        right_60 = msg.ranges[600]
        # right_75 = msg.ranges[660]
        right_90 = msg.ranges[719]

        #  #READING AT POSITIVE ANGLES - To the right of the drone
        left_15 = msg.ranges[300]
        # left_30 = msg.ranges[240]rosrun scoutrobot_control scoutrobot_control.py
        left_45 = msg.ranges[180]
        left_60 = msg.ranges[120]
        # left_75 = msg.ranges[60]
        left_90 = msg.ranges[0]

       

        front_array = msg.ranges[300:420]
        front = min(front_array)
        if front > 1.0:
            self.navigation(0.5,0,0,0,0,0)
        elif front <= 1.0:
            direction = self.pick_free_direction()
            if direction == "left":
                print("Turning left")
                self.navigation(0,0,0,0,0,self.turn_value)
            if direction == "right":
                print("Turning Right")
                self.navigation(0,0,0,0,0,-abs(self.turn_value))
            if direction == "blocked":
                self.navigation(0,0,0,0,0,self.turn_value)
            if direction == "right" and direction == "left":
                self.navigation(0,0,0,0,0,self.turn_value)
            # else:
            #     self.navigation(0.0,0,0,0,0,0.05)
    def pick_free_direction(self):
        print("Entered Here")
       
        if self.Is_rangeFree(self._msg, "left") and self.Is_rangeFree(self._msg,"right"):
            if isinf(self.max_right) and isinf(self.max_left):
                print("both inf")
                return "left"
            if isinf(self.max_left):
                print("max left - inf")
                return "left"
            if isinf(self.max_right):
                print("Max Right -inf")
                return "right"
            if self.max_right > self.max_left:
                print("max right > max left")

                return "right"
            elif self.max_left > self.max_right:
                print("max left > max right")
                return "left"
        if self.Is_rangeFree(self._msg,"left"):
            print("left")
            return "left"
        if self.Is_rangeFree(self._msg,"right"):
            print("right")
            return "right"       
        print("blocked")
        return "blocked"

    def fake_block():
        return "blocked"
    
    def Is_rangeFree(self,rangeList,direction):
        if  direction == "left":
            front_array = rangeList[0:120]
            front = min(front_array)
            self.max_left = max(front_array)

            if front >  1.0:
                print ("left true")
                return True
            else:
                print ("left false")
                return False
        elif direction == "right":
            front_array = rangeList[599:719]
            front = min(front_array)
            self.max_right = max(front_array)

            if front > 1.0:
                print ("right true")
                return True
            else:
                print ("right false")
                return False

           
  #________Battery Life Management______________
    
    def navdata_callback(self,msg):
        global temp
        global counter
        global turnedBack
	global e_land
        global battery_has_control
	self.take_off_connections = 0
        self.msg = msg	#takes in data from ardrone/navdata topic 
        print ("  ")	#leave gap before new message
        self.Battery_life =msg.batteryPercent	#stores read battery life from drone sensors to the Battery_life variable
        #self.Rotation_from_Origin = msg.rotZ	
        print ("Battery Life = " + str(self.Battery_life)) #alerts human in the loop of current battery life
        if self.Battery_life <= 98 and self.Battery_life >= 97.01 and self.warned == 0: #runs check to see if battery has reached warning threshold (warned check allows to bypass this stage, only needed while sim resets battery)
            print ("Battery Low 40% - Drone landing, manual relaunch available") #alerts human in the loop of low battery
            self.battery_has_control = 1 #halts lidar scanning
	    self.e_land = 0	#notes this is not the emergency landing (from previous iterations)
	    self.land()		#calls land subroutine
	    time.sleep(0.005)	#very small delay to allow land message to be published before pausing activity
	    self.pause()	#pauses all activity until user acknowledges the warning message by pressing any key
	    self.takeoff() 	#once warning has been acknowleged resume mission by calling take off routine 
	    self.warned =1	#notes the user has been warned (see line 299 for more info)
	    self.battery_has_control = 0 #resumes lidar scanning
	elif self.Battery_life <= 97: #runs check to see if battery has reached critical threshold
            print ("Battery Too Low (Below 50%) - DRONE LANDING! CRITICAL BATTERY! manual relaunch unavailable ")	#alerts human in the loop of critical battery
            self.battery_has_control = 1 #halts lidar scanning
	    self.e_land = 1	#notes this is the emergency landing (from previous iterations)
	    if self.e_land == 1:	#ensures actually the emergency landing
			self.land()	#lands the UAV 
			time.sleep(0.005)	#small delay for land message to be published
			rospy.signal_shutdown('Low Battery!')	#shutsdown control node to ensure human in the loop does not erroneously try to relaunch the dr
		

	    

         


if __name__ == '__main__':				#main loop
    settings = termios.tcgetattr(sys.stdin)	
    trip = DroneAutoFlight()
    trip.takeoff()
    while not rospy.is_shutdown():
	trip.call_subscriber()		
    
		
	


		
	

        


   
