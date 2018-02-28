FROM jupyterhub/jupyterhub:latest

# Installs JupyterHub dependencies
RUN pip install oauthenticator
RUN pip install sudospawner

# Copies jupyterhub_config.py file
COPY jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py

# Copies provisioning scripts
COPY internals /srv/jupyterhub/internals
COPY docs /srv/jupyterhub/internals/docs

# Runs provision scripts
# WORKDIR /srv/jupyterhub/internals
# RUN sh provision.sh
