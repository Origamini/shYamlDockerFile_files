#!/bin/bash
#Update the package list
sudo apt update -y
#Install docker
sudo apt-get install docker.io -y
#Making sure that the docker is up and running
sudo systemctl start docker
sudo systemctl enable docker
#Clone the git repository
git clone https://github.com/Origamini/MyCalci.github.io.git
#Change directory to the cloned repository
cd MyCalci.github.io
#Build the docker image
sudo docker build -t my_image .
#Run the docker container
sudo docker run -itd --name C1 -p 80:80 my_image
