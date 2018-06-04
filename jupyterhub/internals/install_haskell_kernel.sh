echo "INSTALLING HASKELL KERNEL"

# Instructions taken from:
# https://github.com/gibiansky/IHaskell

# Haskell dependencies
apt-get install -y libtinfo-dev libzmq3-dev libcairo2-dev libpango1.0-dev libmagic-dev libblas-dev liblapack-dev

# Install Haskell
curl -sSL https://get.haskellstack.org/ | sh

git clone https://github.com/gibiansky/IHaskell
cd IHaskell
pip install -r requirements.txt
stack install gtk2hs-buildtools
stack install --fast
ihaskell install --stack
cd ..