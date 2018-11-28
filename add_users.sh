SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS`
    trap "kill $SSH_AGENT_PID" 0
fi
ssh-keygen
ssh-add /home/root/.ssh/id_rsa
for i in {1..3}
do
    /usr/sbin/useradd -m -p $(openssl passwd -1 'pass') u$i
    mkdir /home/u$i/.ssh
    ssh-keygen -f /home/u$i/.ssh/id_rsa
    ssh-add /home/u$i/.ssh/id_rsa
    echo "User u$i has been created and it's shh key"
done


