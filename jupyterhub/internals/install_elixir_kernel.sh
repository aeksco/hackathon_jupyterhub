echo "INSTALLING EXIXIR KERNEL"

# Instructions taken from:
# https://elixir-lang.org/install.html#unix-and-unix-like

# Add Erlang Solutions repo
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

# Update package list
apt-get update

# Install the Erlang/OTP platform and all of its applications
apt-get install -y esl-erlang

# Install Elixir
apt-get install -y elixir
mix local.hex --force
mix local.rebar --force

# Adds rebar to the root user's path
# TODO - test this...
# echo "export PATH=$PATH:$HOME/.mix" > ~/.bashrc

# Clones IElixir and installs
git clone https://github.com/pprzetacznik/IElixir.git
cd IElixir
mix deps.get
mix deps.update erlzmq
mix test
MIX_ENV=prod mix compile
sh ./install_script.sh
cd ..
