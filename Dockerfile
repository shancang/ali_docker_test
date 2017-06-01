FROM centos
COPY CentOS-Base.repo /etc/yum.repo.d/yum.repo
RUN rm -rf /etc/yum.repo.d/C* && \
	yum -y install git && \
	rm -rf /var/cache/yum/*
CMD ["/bin/bash"]