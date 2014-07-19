FROM ubuntu
MAINTAINER Patrick Cable cable@ll.mit.edu
ENV http_proxy "http://llproxy:8080"
ENV https_proxy "http://llproxy:8080"
RUN apt-get update
RUN apt-get install -y openssh-server bash bash-completion
RUN mkdir /var/run/sshd
RUN chown root:root /var/run/sshd
RUN chmod 0755 /var/run/sshd
ADD sshd_init.sh /root/sshd_init.sh
ADD sudosh /usr/local/bin/sudosh
RUN mkdir /var/log/sudosh
RUN chmod 0733 /var/log/sudosh
ENTRYPOINT ["/root/sshd_init.sh"]

EXPOSE 22
