Update/upgrade apt:

sudo apt update
sudo apt upgrade -y

Install unzip + wget:

sudo apt install -y unzip wget

Download zip , extract terraform, move terraform binary to bin, delete zip file:

wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip terraform_0.11.13_linux_amd64.zip
sudo mv terraform /usr/local/bin
rm terraform_0.11.13_linux_amd64.zip

Generate SSH key:
ssh-keygen


Create service account in GCP console and create key JSON file. Rename this file to "credentials.json" and place in folder with .tf files.
Add ssh key to project metadata in GCP console. Match your public and private key files in ~/.ssh to the variables .tf file.

Do terraform init, terraform plan and finally terraform apply.

