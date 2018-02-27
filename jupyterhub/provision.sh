# TODO - run sh create_user.sh $p
# Instead of script above..
while read p; do

  # adduser - creates a new Unix user account
  adduser --disabled-password --gecos "" $p

  # Creates ~/notebooks
  mkdir /home/$p/notebooks

  # Creates ~/notebooks/WELCOME.md
  # TODO - this file needs _actual_ contents
  touch /home/$p/notebooks/WELCOME.md
  echo HELLO > /home/$p/notebooks/WELCOME.md

  # Creates ~/notebooks/share
  # This will be a sorta airdrop for the hackathon, maybe..
  mkdir /home/$p/notebooks/share

  # Creates ~/notebooks/share/INSTRUCTIONS.md
  # TODO - this file needs contents
  touch /home/$p/notebooks/share/INSTRUCTIONS.md
  echo HELLO > /home/$p/notebooks/share/INSTRUCTIONS.md

  # Recursively sets the owner of ~/
  chown -R $p /home/$p/

done <users.txt

# Creates shared directories
mkdir /home/share
mkdir /home/share/datasets
mkdir /home/share/training_sets
mkdir /home/share/example_notebooks
touch /home/share/share.md