# docker-transmission

Docker container for [Transmission 2.94][3]

"Transmission a Fast, Easy and Free BitTorrent Client"

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 18.04 use the commands:

    sudo apt-get update
    sudo wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    docker run -d -p 9091:9091 --name transmissionquantum object/docker-transmission

This will create docker-transmission container with login/password guest/guest.

If you want different user and password them : 

    docker run -d -p 9091 -e USER_T=user_name -e PASSWD_T=password -p 9091:9091 --name transmission quantumobject/docker-transmission

## Accessing the Transmission applications:

After that check with your browser at addresses:

  - **http://host_ip:9091/**

## To access data from the server:

 You can access the downloaded torrent from the server that running container using the Volume (-v) for home folder for client create for this container:
  
     docker run -d -p 9091:9091 -e PASSWD_T=password -v /your_folder/for_torrent:/home/'usr_name'/dl/torrent --name transmission quantumobject/docker-transmission
      
## More Info

About Transmission: [www.transmissionbt.com][1]

To help improve this container [docker-transmission][5]

For additional info about us and our projects check our site [www.quantumobject.org][6]

[1]:http://www.transmissionbt.com/
[2]:https://www.docker.com
[3]:https://github.com/transmission/transmission/releases/tag/2.94
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-transmission
[6]:http://www.quantumobject.org/
