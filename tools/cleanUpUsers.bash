#!/bin/bash

# ITZ doesn't alwasys clean up the home directories.  using a list of current reservations, that you create by running a script in IBM Cloud shell
# for each user not in the list, remove them from the system and remove their home directory

cd /home
ls -1 > /tmp/allHomeDirs.txt

cat /tmp/allHomeDirs.txt | while read x
do
  grep $x /tmp/activeReservations.txt && {
        echo skipping $x
}
  grep $x current.txt || {
        echo no reservation for $x
        echo delete user $x
        echo rm -fr /home/$x
        # rm -fr /home/$x
}

done