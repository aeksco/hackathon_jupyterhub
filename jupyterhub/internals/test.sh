echo "INSTALLING PYTHON 2.7 KERNEL"

# Creates Python 2.7 Conda environment
conda create --name py27 python=2.7
conda install -n py27 anaconda

# Activate Python 2.7 environment
source activate py27

# Install bash kernel
pip install bash_kernel
python -m bash_kernel.install

# TODO - install Python 2.7 dependencies...

# Install Python 2.7 Jupyter kernel
ipython kernel install

# Deactivates Python 2.7 environment (jumps back to Python 3.5.5)
source deactivate
