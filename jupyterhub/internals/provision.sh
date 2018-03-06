# Creates a new user account for each user in users.txt
while read p; do
  sh create_user.sh $p
done <users.txt

# Update / Install libraries
apt-get update
apt-get -Y install unzip zip git nano sudo curl

# Install Python & R kernels and libraries
sh install_python3_libs.sh
# sh install_python2_libs.sh
# sh install_r_kernel.sh

# Builds share & examples directories
# sh build_examples.sh