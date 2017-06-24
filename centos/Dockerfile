FROM centos
COPY CentOS-Base.repo /etc/yum.repo.d/yum.repo
RUN rm -rf /etc/yum.repo.d/C* && \
	yum -y install java  && \
	yum -y install java-devel  && \
	rm -rf /etc/localtime && \
	ln -s  /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	rm -rf /var/cache/yum/* &&
	rm -rf /usr/lib/jvm/java/jre/lib/security/US_export_policy.jar && \
	rm -rf /usr/lib/jvm/java/jre/lib/security/local_policy.jar 
ADD local_policy.jar /usr/lib/jvm/java/jre/lib/security/
ADD US_export_policy.jar /usr/lib/jvm/java/jre/lib/security/
ENV JAVA_HOME /usr/lib/jvm/java
ENV TIME_ZONE Asia/Shanghai
CMD ["/bin/bash"]