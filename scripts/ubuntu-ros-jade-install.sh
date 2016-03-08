# For more information on how to install ros-jade on ubuntu,
# checkout http://wiki.ros.org/jade/Installation/Ubuntu

# Settings accept software from packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Keys setup
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116

# Make sure Debian package index is up-to-date
sudo apt-get update

# Desktop-Full Install: ROS, rqt, rviz, robot-generic libraries,
# 2D/3D simulators, navigation and 2D/3D perception
sudo apt-get install -y ros-jade-desktop-full

# Before one can use ROS, rosdep must be initialized.
# rosdep enables you to easily install system dependencies for source you want to compile
# and is required to run some core components in ROS.
sudo rosdep init
su vagrant -l -c 'rosdep update'

# Make ROS environment variables automatically loaded on each new bash session
echo "source /opt/ros/jade/setup.bash" >> /home/vagrant/.bashrc

# Installing rosinstall (http://docs.ros.org/independent/api/rosinstall/html/)
sudo apt-get install -y python-rosinstall
