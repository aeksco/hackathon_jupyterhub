# Creates a new user account for each user in users.txt
while read p; do
  sh create_user.sh $p
done <users.txt