# Creates a new user account for each user in users.txt
while read p; do
  sh create_user.sh $p
done <users.txt

# Creates shared directories
mkdir /home/share
mkdir /home/share/datasets
mkdir /home/share/training_sets
mkdir /home/share/examples
touch /home/share/share.md