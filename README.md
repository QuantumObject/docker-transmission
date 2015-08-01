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

## More Info

About Transmission: [www.transmissionbt.com][1]

To help improve this container [docker-transmission][5]

[1]:http://www.transmissionbt.com/
[2]:https://www.docker.com
[3]:https://trac.transmissionbt.com/wiki/Changes#version-2.84
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-transmission
