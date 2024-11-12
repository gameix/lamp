# LAMP Container
It's a simple LAMP (Linux Apache Mysqp PHP) Container

## Build & Deploy
    # Checkout git repo
    cd /opt
    rm -rf /opt/lamp
    git clone https://github.com/gameix/lamp.git
    cd /opt/lamp
	git checkout create-container
    git branch -a

    # Install docker compose
    chmod +x install-docker-compose.sh
    ./install-docker-compose.sh
    
    # Remove all containers
    docker rm -f lamp

    # Remove all old docker images etc.
    docker system prune -af --volumes
    
    # Remove current devloping image
    docker rmi -f lamp:1.0.0#

    # Build & Deploy 
    docker-compose up -d
     