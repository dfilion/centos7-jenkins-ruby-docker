# Based on the dfilion/centos6-jenkins image, pre-install a selection of
# ruby versions so we don't need to download them on every run.
#

FROM rainingpackets/centos7-jenkins
MAINTAINER David Filion <filiond@gmail.com>

COPY install-ruby.sh /tmp/install-ruby.sh
RUN su -l -s /bin/bash -c '/bin/bash -l /tmp/install-ruby.sh' jenkins
RUN su -l -s /bin/bash -c 'rvm list' jenkins

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

