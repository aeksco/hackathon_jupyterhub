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

# R Markdown Support
# RUN conda install -c r r-essentials

# Copies jupyterhub_config.py file
COPY jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py

# Copies user management scripts
COPY users.txt /srv/jupyterhub/users.txt
COPY create_user.sh /srv/jupyterhub/create_user.sh
COPY provision.sh /srv/jupyterhub/provision.sh

# TODO - run provision script here
# TODO - need to set WORKDIR before command?
# RUN sh /srv/jupyterhub/provision.sh