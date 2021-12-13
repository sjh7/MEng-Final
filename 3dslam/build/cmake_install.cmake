# Install script for directory: /home/g01b/3dslam/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE PROGRAM FILES "/home/g01b/3dslam/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE PROGRAM FILES "/home/g01b/3dslam/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/setup.bash;/home/g01b/3dslam/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE FILE FILES
    "/home/g01b/3dslam/build/catkin_generated/installspace/setup.bash"
    "/home/g01b/3dslam/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/setup.sh;/home/g01b/3dslam/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE FILE FILES
    "/home/g01b/3dslam/build/catkin_generated/installspace/setup.sh"
    "/home/g01b/3dslam/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/setup.zsh;/home/g01b/3dslam/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE FILE FILES
    "/home/g01b/3dslam/build/catkin_generated/installspace/setup.zsh"
    "/home/g01b/3dslam/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/g01b/3dslam/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/g01b/3dslam/install" TYPE FILE FILES "/home/g01b/3dslam/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/g01b/3dslam/build/gtest/cmake_install.cmake")
  include("/home/g01b/3dslam/build/driver_common/driver_common/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_models/hector_components_description/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_models/hector_models/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_models/hector_sensors_description/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_slam/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_slam_launch/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_models/hector_xacro_tools/cmake_install.cmake")
  include("/home/g01b/3dslam/build/octomap_mapping/octomap_mapping/cmake_install.cmake")
  include("/home/g01b/3dslam/build/scoutrobot_control/cmake_install.cmake")
  include("/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_msgs/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_map_tools/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_nav_msgs/cmake_install.cmake")
  include("/home/g01b/3dslam/build/teleop_twist_keyboard/cmake_install.cmake")
  include("/home/g01b/3dslam/build/ardrone_simulator_gazebo7/tum_simulator/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_geotiff/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_geotiff_plugins/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_marker_drawing/cmake_install.cmake")
  include("/home/g01b/3dslam/build/driver_common/timestamp_tools/cmake_install.cmake")
  include("/home/g01b/3dslam/build/driver_common/driver_base/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hokuyo_node/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_compressed_map_transport/cmake_install.cmake")
  include("/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_gazebo/cmake_install.cmake")
  include("/home/g01b/3dslam/build/ardrone_simulator_gazebo7/cvg_sim_gazebo_plugins/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_imu_attitude_to_tf/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_imu_tools/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_map_server/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_trajectory_server/cmake_install.cmake")
  include("/home/g01b/3dslam/build/ardrone_simulator_gazebo7/message_to_tf/cmake_install.cmake")
  include("/home/g01b/3dslam/build/octomap_mapping/octomap_server/cmake_install.cmake")
  include("/home/g01b/3dslam/build/hector_slam/hector_mapping/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/g01b/3dslam/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
