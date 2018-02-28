# Prompt
echo CREATING USER: $1

# adduser - creates a new Unix user account
adduser --disabled-password --gecos "" $1

# Creates ~/notebooks
mkdir /home/$1/notebooks

# Creates ~/notebooks/WELCOME.md
# TODO - this file needs _actual_ contents
# touch /home/$1/notebooks/WELCOME.md
# echo HELLO > /home/$1/notebooks/WELCOME.md
cp ./docs/WELCOME.md /home/$1/notebooks

# Creates ~/notebooks/share
# This will be a sorta airdrop for the hackathon, maybe..
# mkdir /home/$1/notebooks/share

# Creates ~/notebooks/share/INSTRUCTIONS.md
# TODO - this file needs contents
# touch /home/$1/notebooks/share/INSTRUCTIONS.md
# echo HELLO > /home/$1/notebooks/share/INSTRUCTIONS.md

# Recursively sets the owner of ~/
chown -R $1 /home/$1/

echo DONE CREATING USER: $1