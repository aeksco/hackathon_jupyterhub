# jupyterhub_hackathon
A hackathon-friendly JupyterHub deployment with Docker &amp; NGINX.

Includes example Jupyter notebook to push data to MongoDB, and a [mongo-express](https://github.com/mongo-express) admin interface. Runs the [Jupyter Data Science Notebook](https://hub.docker.com/r/jupyter/datascience-notebook/) container with an installation of [Zipline](https://github.com/quantopian/zipline).

## Instructions

1. Clone this repository and `cd` into the directory:

    `git clone https://github.com/aeksco/hackathon_jupyterhub.git`

    `cd hackathon_jupyterhub`

2. Create GitHub OAuth Application:

    Go to [github.com/settings/developers](https://github.com/settings/developers) and create a new OAuth application.

3. Create the `jupyterhub_config.py` file:

    Copy the `jupyterhub/jupyterhub_config.example.py` file to `jupyterhub/jupyterhub_config.py`

    Change the following fields to match your GitHub OAuth Application:

      - `c.GitHubOAuthenticator.oauth_callback_url`
      - `c.GitHubOAuthenticator.client_id`
      - `c.GitHubOAuthenticator.client_secret`
      - `c.Authenticator.whitelist = {'torvalds', 'aeksco'}`
      - `c.Authenticator.admin_users = {'torvalds'}`
      - `c.JupyterHub.base_url = '/jupyterhub'`

4. Modifiy 'jupyterhub/users.txt':

    This file should contain the GitHub usernames of all users who will be using the system. Please ensure that there is no trailing whitespace or newlines in this file!

5. Start the docker containers:

    `docker-compose up`

## Usage

- Jupyter server running at [http://localhost:8888](http://localhost:8888)

## Notes

- You may run a command inside the `hackathon_jupyterhub` docker container as the root user with the following command:

  `docker-compose run --user="root" hackathon_jupyterhub pip install pandas`

- Installation instructions for Python 2.7 Jupyter kernel were found [here](https://github.com/ozancaglayan/jupyterhub-installation).

## Optional NGINX Configuration
- Run the following to setup an NGINX reverse-proxy to the Jupyter Notebook server
  ```
  sudo apt-get update
  sudo apt-get install nginx
  ```

- Copy the contents of `NGINX_EXAMPLE` into `/etc/nginx/sites-available/my_site`

- Simlink the file from `sites-available` to `sites-enabled`

  `ln -s /etc/nginx/sites-available/my_site /etc/nginx/sites-enabled/my_site`

- Control NGINX with the following system commands:

    ```
    sudo systemctl start nginx
    sudo systemctl stop nginx
    sudo systemctl restart nginx
    ```
