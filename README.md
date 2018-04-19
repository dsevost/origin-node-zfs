
```console
$ docker login -u $(oc whoami) -p $(oc whoami -t) 172.30.227.189:5000
$ atomic pull 172.30.227.189:5000/origin-node-zfs/origin-node-zfs
$ atomic install --storage ostree --system --name origin-node-zfs 172.30.227.189:5000/origin-node-zfs/origin-node-zfs
```
