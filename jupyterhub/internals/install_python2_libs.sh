echo "INSTALLING PYTHON 2.7 KERNEL"

# Creates Python 2.7 Conda environment
conda create --name py27 python=2.7 -y
conda install -n py27 anaconda -y

# Activate Python 2.7 environment
source activate py27

# Install bash kernel
pip install bash_kernel
python -m bash_kernel.install

# Install Python 2.7 Jupyter kernel
ipython kernel install

# Python 2.7 libraries
pip install beautifulsoup4
pip install bokeh
pip install bqplot
pip install bs4
pip install cloudpickle
pip install cython
pip install dask
pip install dill
pip install graphviz
pip install h5py
pip install ipywidgets
pip install matplotlib
pip install nltk
pip install numba
pip install numexpr
pip install numpy
pip install pandas
pip install patsy
pip install Pillow
pip install protobuf
pip install pywavelets
pip install scikit-image
pip install scikit-learn
pip install scipy
pip install seaborn
pip install sklearn
pip install sqlalchemy
pip install statsmodels
pip install sympy
pip install tqdm
pip install vincent
pip install xlrd

# Caffe & Tensorflow
conda install --yes caffe
conda install --quiet --yes 'tensorflow=1.3*' 'keras=2.0*'
conda clean -tipsy
fix-permissions $CONDA_DIR

# Deactivates Python 2.7 environment (jumps back to Python 3.5.5)
source deactivate