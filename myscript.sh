cd ~
sudo apt-get update 
sudo apt-get install -yq openjdk-8-jdk 
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - 
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo apt update 
sudo apt install -y jenkins 
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

