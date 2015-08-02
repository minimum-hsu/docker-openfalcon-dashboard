# docker-openfalcon-dashboard

## Build

Enter the following command in the repo directory.

```
$sudo docker build --force-rm=true -t openfalcon-dashboard .
```

## Run

### Basic Run

Use default configuration, and falcon-dashboard package.

```
$sudo docker run -dti --name dashboard -p 8081:8081 openfalcon-dashboard
```

### Advanced Run

+ Self-defined configuration

    Replace file **config.py** in the volume */config*.  
    For more detail about **config.py**, see [Dashboard](http://book.open-falcon.com/zh/install/dashboard.html).

+ New falcon-dashboard package

    Replace file **falcon-dashboard.tar.gz** in the volume */package*.
  
For example, **config.py** in /tmp/config and **falcon-dashboard.tar.gz** in /tmp/pack,

```
$sudo docker run -dti --name dashboard -v /tmp/pack:/package -v /tmp/config/config.py:/config/config.py -p 8081:8081 openfalcon-dashboard
```
