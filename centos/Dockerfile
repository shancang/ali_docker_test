FROM centos
COPY CentOS-Base.repo /etc/yum.repo.d/yum.repo
RUN rm -rf /etc/yum.repo.d/C* && \
	yum -y install java  && \
	rm -rf /etc/localtime && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	rm -rf /var/cache/yum/*
ENV JAVA_HOME /usr/lib/jvm/java
ENV TIME_ZONE Asia/Shanghai
CMD ["/bin/bash"]