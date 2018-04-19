from openshift/node:v3.9.0

RUN \
    set -e ; \
    rpm -ihv http://download.zfsonlinux.org/epel/zfs-release.el7_4.noarch.rpm ; \
    yum install -y libnvpair1 ; \
    rpms='' ; \
    suffix="0.7.8-1.el7_4.x86_64.rpm" ; \
    for p in zfs libzfs2 libzpool2 ; do rpms+="http://download.zfsonlinux.org/epel/7.4/x86_64/$p-$suffix " ; done ; \
    rpm -ihv --nodeps $rpms
