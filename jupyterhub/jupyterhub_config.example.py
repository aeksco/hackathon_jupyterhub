# Jupyterhub Configuration
c.JupyterHub.authenticator_class = 'oauthenticator.GitHubOAuthenticator'
c.GitHubOAuthenticator.oauth_callback_url = 'http://mysite.com/jupyterhub/oauth_callback'

# TODO - THESE ARE SECRETS
# GitHub OAuth Client ID & Secret
# TODO - these must be filled in manually
c.GitHubOAuthenticator.client_id = 'CLIENT_ID_GOES_HERE'
c.GitHubOAuthenticator.client_secret = 'CLIENT_SECRET_GOES_HERE'

# This is an application.
# create system users that don't exist yet
c.LocalAuthenticator.create_system_users = True
c.Authenticator.whitelist = {'aeksco'}
c.Authenticator.admin_users = {'aeksco'}
c.JupyterHub.cookie_secret_file = '/srv/jupyterhub/jupyterhub_cookie_secret'

# Spawner Options
c.Spawner.notebook_dir = '~/notebooks'

# Sets the base_url
c.JupyterHub.base_url = '/jupyterhub'

# # # # #
# JupyterLab settings

c.Spawner.default_url = '/lab'
c.Spawner.cmd = ['jupyter-labhub']

# # # # #
# Debug Settings

# Set the log level by value or name.
# c.JupyterHub.log_level = 'DEBUG'

# Enable debug-logging of the single-user server
# c.Spawner.debug = True
# c.Spawner.args = ['--debug']

# Enable debug-logging of the single-user server
# c.LocalProcessSpawner.debug = True

# Log File
# c.JupyterHub.extra_log_file = '/srv/jupyterhub/jupyterhub.log'

# # # # #

# Let the Systemctl aware of all the environment path
import os
for var in os.environ:
    c.Spawner.env_keep.append(var)
