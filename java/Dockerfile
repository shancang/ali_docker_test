FROM java:latest
RUN rm -rf /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	ln -s  /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	rm -rf /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/US_export_policy.jar && \
	rm -rf /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security/local_policy.jar 
ADD local_policy.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
ADD US_export_policy.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
ENV TIME_ZONE Asia/Shanghai