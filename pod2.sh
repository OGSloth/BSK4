BANNED_IP = 127.0.0.1
#a
echo "Match User u1" >> /etc/ssh/sshd_config
echo "	PasswordAuthentication no" >> /etc/ssh/sshd_config
#b
echo "DenyUsers u2" >> /etc/ssh/sshd_config
#c

#d
echo "sshd: $BANNED_IP" >> /etc/hosts.deny
#e
echo "Change /etc/ssh/sshd_config Protocol 2,1 on 2 only"
echo "https://www.linuxquestions.org/questions/linux-security-4/how-to-set-ssh-server-to-accept-v2-connections-only-42633/"
service ssh restart
