#STUDENTS=/home/students/inf/m/mg370790/bsk3
#STUDENTS2=/home/students/mismap/m/mg370790/bsk3
#LOCAL=ToMount
mkdir Obrazy
sshfs mg370790@students.mimuw.edu.pl:/home/students/inf/PUBLIC/BSK/Obrazy Obrazy
#b,c
rsync -a mg370790@students.mimuw.edu.pl:/home/students/inf/PUBLIC/BSK .


