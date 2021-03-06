# Install script for directory: /home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/g01b/3dslam/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_msgs/msg" TYPE FILE FILES
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/Altimeter.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/Altitude.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/AttitudeCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/Compass.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/ControllerState.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/HeadingCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/HeightCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/MotorCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/MotorPWM.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/MotorStatus.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/PositionXYCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/RawImu.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/RawMagnetic.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/RawRC.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/RC.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/RuddersCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/ServoCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/Supply.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/ThrustCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/VelocityXYCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/VelocityZCommand.msg"
    "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/msg/YawrateCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_msgs/cmake" TYPE FILE FILES "/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/catkin_generated/installspace/cvg_sim_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/g01b/3dslam/devel/include/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/g01b/3dslam/devel/share/roseus/ros/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/g01b/3dslam/devel/share/common-lisp/ros/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/g01b/3dslam/devel/share/gennodejs/ros/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/g01b/3dslam/devel/lib/python2.7/dist-packages/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/g01b/3dslam/devel/lib/python2.7/dist-packages/cvg_sim_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/catkin_generated/installspace/cvg_sim_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_msgs/cmake" TYPE FILE FILES "/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/catkin_generated/installspace/cvg_sim_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_msgs/cmake" TYPE FILE FILES
    "/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/catkin_generated/installspace/cvg_sim_msgsConfig.cmake"
    "/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/catkin_generated/installspace/cvg_sim_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_msgs" TYPE FILE FILES "/home/g01b/3dslam/src/ardrone_simulator_gazebo7/cvg_sim_msgs/package.xml")
endif()

