FROM golang:1.11

ENV container docker

ADD deps.txt /go/deps.txt
RUN cat /go/deps.txt | xargs -n 1 go get -u ; echo "done" 

# Add Tini
#ENV TINI_VERSION v0.16.1
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
#RUN chmod +x /tini
#ENTRYPOINT ["/tini", "--"]

# expose 22, and start sshd in default
# EXPOSE 22
# CMD ["/usr/sbin/sshd", "-D"]
# CMD ["/bin/bash"]


