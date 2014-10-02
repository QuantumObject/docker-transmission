transmission
============

Dockerfile and other file to create container with transmission web interface (BitTorrent client)


to run it :

docker run -d -p 9091 quantumobject/docker-transmission

check port that docker will assigne for the container and check with browser at host:port to access it use login/password guest/guest

if you want different user and password them :

docker run -d -p 9091 -e USER_T=user_name   -e PASSWD_T=password  quantumobject/docker-transmission
