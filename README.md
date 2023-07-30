A minimal lightweight mysql docker image based on alpine

# How to build image

`git clone ..` , then:

For amd64 based platforms

```bash
docker build -f Dockerfile . -t vo1dbin/alpine-mysql-amd64 --platform linux/amd64
```

For arm64 based platforms

```bash
docker build -f Dockerfile-arm64 . -t vo1dbin/alpine-mysql-arm64 --platform linux/arm64
```

# How to start a container

To start the server without creating an initial user/database:

```
docker run -it --rm \
  --name mysql \
  -v $(pwd):/data \
  -p 3306:3306 \
  vo1dbin/alpine-mysql
```

OR

To start the server and create an initial user, database and specify root password:

```
docker run -it --rm \
   --name mysql \
   -p 3306:3306 \
   -v $(pwd):/data \
   -e MYSQL_DATABASE=my_db \
   -e MYSQL_USER=user \
   -e MYSQL_PASSWORD=passwd \
   -e MYSQL_ROOT_PASSWORD=root_pass  \
   vo1dbin/alpine-mysql
```

# How to manage mysql (mysql cli)

Once the container is running, run:

```
docker exec -it mysql sh
```

to connect, then type:  `` mysql -u root -p``


