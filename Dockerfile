FROM centos
COPY CentOS-Base.repo /etc/yum.repo.d/yum.repo
RUN rm -rf /etc/yum.repo.d/C* && \
	#yum -y install git && \
	yum -y install java  && \
	#yum -y install java-devel  && \
	#yum -y install unzip && \
	#yum -y install wget && \
	#wget https://downloads.gradle.org/distributions/gradle-2.6-bin.zip && #\
	#unzip gradle-2.6-bin.zip && \
	#mv gradle-2.6 /usr/local/ && \
	#rm -rf gradle-2.6-bin.zip && \
	rm -rf /var/cache/yum/*
#ENV PATH $PATH:/usr/local/gradle-2.6/bin
ENV JAVA_HOME /usr/lib/jvm/java
CMD ["/bin/bash"]