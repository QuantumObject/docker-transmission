# docker-transmission

Docker container for [Transmission 2.84][3]

"Transmission a Fast, Easy and Free BitTorrent Client"

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p 9091 quantumobject/docker-transmission

This will create docker-transmission container with login/password guest/guest.

If you want different user and password them : 

    $ docker run -d -p 9091 -e USER_T=user_name -e PASSWD_T=password quantumobject/docker-transmission

## Accessing the Transmission applications:

After that check with your browser at addresses plus the port assigined by docker:

  - **http://host_ip:port/**

## To access data from the server:

 You can access the downloaded torrent from the server that running container using the Volume (-v) and the container command /sbin/backup .
 
 When running the container need to used -v options :
 
     $ docker run -d -p 9091 -e PASSWD_T=password -v [your_directory:]/var/backups quantumobject/docker-transmission
     
Then when you want to copy torrent from users download folder to the /var/backups need to run container command backup:

     $ docker exec -it container_id /sbin/backup
 
 you will have in your [your_directory] the files that was on the torrent directory. 
 
 if you forget to run the container with options -v [your_directory:]/var/backups you still can find the subdirectory/mount point that docker use for VOLUME /var/backups by :
 
     $ docker inspect -f {{.Mounts}} container_id
 
## More Info

About Transmission: [www.transmissionbt.com][1]

To help improve this container [docker-transmission][5]

For additional info about us and our projects check our site [www.quantumobject.com][6]

[1]:http://www.transmissionbt.com/
[2]:https://www.docker.com
[3]:https://trac.transmissionbt.com/wiki/Changes#version-2.84
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-transmission
[6]:http://www.quantumobject.com/
