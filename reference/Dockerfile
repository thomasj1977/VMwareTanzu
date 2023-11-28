FROM k8s.gcr.io/scl-image-builder/cluster-node-image-builder-amd64:v0.1.9
USER root
ENV LC_CTYPE=POSIX
ENV OVFTOOL_FILENAME=VMware-ovftool-4.4.1-16812187-lin.x86_64.bundle
ADD $OVFTOOL_FILENAME /tmp/
RUN /bin/sh /tmp/$OVFTOOL_FILENAME --console --required --eulas-agreed && \
  rm -f /tmp/$OVFTOOL_FILENAME
USER imagebuilder
ENV IB_OVFTOOL=1
