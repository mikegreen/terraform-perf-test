
echo "" > personnel.users
for i in {1..200}
do

	id=$(openssl rand -hex 4)
	echo "$id@xyz.com" >> personnel.users
done