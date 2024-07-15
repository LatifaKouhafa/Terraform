# Update and install required packages
sudo apt-get update
sudo apt-get install -y docker.io git

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the Docker group
sudo usermod -a -G docker $(whoami)

# Clone the repository as the current user
sudo -i -u $(whoami) git clone https://github.com/maheshkareeya/python-sqlite.git /home/$(whoami)/api-repo

# Change to the repository directory
cd /home/$(whoami)/api-repo

# Build and run the Docker container
sudo docker build -t api-image .
sudo docker run -d -p 8080:8080 api-image