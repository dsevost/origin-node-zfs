
```console
$ docker login -u $(oc whoami) -p $(oc whoami -t) 172.30.227.189:5000
$ atomic install --storage ostree --system --name origin-node-zfs 172.30.227.189:5000/origin-node-zfs/origin-node-zfs
$ cp /etc/sysconfig/origin-node{,-zfs}
$ cd /etc/systemd/system
$ cp -r origin-node{,-zfs}.service.d/
$ cp origin-node{,-zfs}-dep.service
$ sed 's/origin-node/origin-node-zfs/' -ci.bak1 origin-node-zfs-dep.service
$ systemctl daemon-reload
$ systemctl disable --now origin-node
$ systemctl enable --now origin-node-zfs
```

