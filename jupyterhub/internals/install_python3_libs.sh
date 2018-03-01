echo "INSTALLING PYTHON 3.5.5 LIBRARIES"

# Pip installations...
pip install numpy
pip install sklearn
pip install tqdm
pip install dask
pip install pywavelets
pip install bs4
pip install graphviz
pip install nltk
pip install Pillow
pip install sodapy

# Newspaper 3k
apt-get install libxml2-dev libxslt-dev libjpeg-dev zlib1g-dev libpng12-dev
pip install newspaper3k

# Conda installations...
conda install -c --yes conda-forge bqplot
conda install --quiet --yes \
  'nomkl' \
  'ipywidgets=7.1*' \
  'pandas=0.19*' \
  'numexpr=2.6*' \
  'matplotlib=2.0*' \
  'scipy=0.19*' \
  'seaborn=0.7*' \
  'scikit-learn=0.18*' \
  'scikit-image=0.12*' \
  'sympy=1.0*' \
  'cython=0.25*' \
  'patsy=0.4*' \
  'statsmodels=0.8*' \
  'cloudpickle=0.2*' \
  'dill=0.2*' \
  'numba=0.31*' \
  'bokeh=0.12*' \
  'sqlalchemy=1.1*' \
  'hdf5=1.8.17' \
  'h5py=2.6*' \
  'vincent=0.4.*' \
  'beautifulsoup4=4.5.*' \
  'protobuf=3.*' \
  'xlrd'

# Tensorflow installation
conda install --yes caffe
conda install --quiet --yes 'tensorflow=1.3*' 'keras=2.0*'
conda clean -tipsy
fix-permissions $CONDA_DIR