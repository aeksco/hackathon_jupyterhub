# Creates a new user account for each user in users.txt
while read p; do
  sh create_user.sh $p
done <users.txt

# Creates shared directories
# mkdir /home/share
# mkdir /home/share/datasets
# mkdir /home/share/training_sets
# mkdir /home/share/examples
# touch /home/share/share.md

# Update / Install libraries
apt-get update
apt-get install unzip git nano

# Install Python & R kernels and libraries
sh install_python2_libs.sh
sh install_python3_libs.sh
sh install_r_kernel.sh

# Google Deep Dream example
# Fetch BVLC GoogleNet Caffe Model
# https://github.com/google/deepdream/blob/master/dream.ipynb
# https://github.com/BVLC/caffe/tree/master/models/bvlc_googlenet
# wget http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
# wget https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/deploy.prototxt

# Another Deep Dream example...
# https://nbviewer.jupyter.org/github/tensorflow/tensorflow/blob/master/tensorflow/examples/tutorials/deepdream/deepdream.ipynb
# https://photos.google.com/share/AF1QipPX0SCl7OzWilt9LnuQliattX4OUCj_8EP65_cTVnBmS1jnYgsGQAieQUc1VQWdgQ?key=aVBxWjhwSzg2RjJWLWRuVFBBZEN1d205bUdEMnhB