# EBMS Adapter in Docker


## Buidling the image

Ensure that the admin jar file is present in the same directory as the *Dockerfile*.

Run the command: 
``` 
docker build --tag "embs-admin" . 
```


## Commands to use the image to start two, communicating containers

The following commands start two containers running the EBMS Adapter Admin tool with embedded server.

The conf volumes are mapped to local directories, so make sure that they map to a valid directory with a valid properties file.

### Starting de overheid server

```
docker run --rm --publish 18080:8080 --publish 8088:8888 --name ebms-test-overheid --volume=/home/peter_zandbergen/ebms-docker/conf-2:/app/conf ebms-admin
```

### Starting the digipoort server

```
docker run --rm --publish 8080:8080 --publish 8888:8888 --name ebms-test-digipoort --volume=/home/peter_zandbergen/ebms-docker/conf-1:/app/conf ebms-admin
```





# Using the test setup

Open a browser window to the first admin instance. http://<hostname>:18080 