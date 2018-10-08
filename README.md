# Titanium World 
Titanium world is a private Tibia server.  
The server is based on an earlier version of [opentibia/server](https://github.com/opentibia/server) and targets Tibia 7.6.

If you are here to report a bug, head over to the issue tracker and create an issue.  

## Developer guide
Pull requests are welcome at any time.  
So if you want to contribute, please read the following instructions.  

#### Prerequisites
- Use Linux
- Install the dependencies.
```bash
apt-get install libgmp3-dev libboost-thread-dev libboost-regex-dev libboost-system-dev \
   libboost-filesystem-dev liblua5.1-dev libxml2-dev liblzma-dev zlib1g-dev libticonv-dev
```

#### Compile
Run the following commands to compile the source code.
```bash
cmake -DCMAKE_BUILD_TYPE=Performance -DUSE_MYSQL=Off
make
```


