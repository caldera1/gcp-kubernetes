# Install kubectl and Docker
sudo apt-get -y install kubectl

#Add:
sudo apt-get -y install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
     
#Key Docker:
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
 
#Add repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")    $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get -y install docker-ce

sudo usermod -aG docker $USER

#Kubernetes Complete
source <(kubectl completion bash)
