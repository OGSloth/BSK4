usr=$(whoami)
if [ "$usr" != "u1" ]; then
   echo "Use script as user u1"
else
   ssh-keyscan -H students.mimuw.edu.pl >> ~/.ssh/known_hosts
   cat u1-config > ~/.ssh/config
   #su u1
   #ssh-copy-id -i ~/.ssh/id_rsa mg370790@students.mimuw.edu.pl
fi

