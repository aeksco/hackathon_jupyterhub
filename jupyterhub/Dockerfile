FROM jupyterhub/jupyterhub:latest

# Installs JupyterHub dependencies
# TODO - what other dependencies do we need?
# TODO - re-enable the rest of these libraries after testing is complete.
RUN pip install oauthenticator
RUN pip install sudospawner
# RUN pip install bqplot
# RUN pip install numpy
# RUN pip install pandas
# RUN pip install matplotlib
# RUN pip install scipy
# RUN pip install bokeh
# RUN pip install sklearn
# RUN pip install tqdm
# RUN pip install h5py
# RUN pip install dask
# RUN pip install ipywidgets
# RUN pip install pywavelets
# RUN pip install pysolr
# RUN pip install bs4
# RUN pip install graphviz
# RUN pip install nltk
# RUN conda install -c conda-forge bqplot

#####
# R Markdown Support
# RUN conda install -c r r-essentials

#####
# Install Python 2.7 Jupyter Kernel

# Create new Python 2.7 environment
# RUN conda create --name py27 python=2.7
# RUN conda install -n py27 anaconda

# Activate Python 2.7 environment
# RUN source activate py27

# Install bash kernel
# RUN pip install bash_kernel
# RUN python -m bash_kernel.install

# TODO - install Python 2.7 dependencies...

# Install Python 2.7 Jupyter kernel
# RUN ipython kernel install

# Deactivates Python 2.7 environment (jumps back to Python 3.5.5)
# RUN source deactivate

#####
# System user configuration

# Copies jupyterhub_config.py file
COPY jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py

# Copies user management scripts
COPY internals /src/jupyterhub/internals
COPY users.txt /srv/jupyterhub/users.txt
COPY create_user.sh /srv/jupyterhub/create_user.sh
COPY provision.sh /srv/jupyterhub/provision.sh

# TODO - run provision script here
# TODO - need to set WORKDIR before command?
# RUN sh /srv/jupyterhub/provision.sh