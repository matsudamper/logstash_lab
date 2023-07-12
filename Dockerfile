FROM docker.elastic.co/logstash/logstash:7.17.11

ARG jdbc_version="8.0.33"
ARG jdbc_jar_dir="/usr/share/logstash/logstash-core/lib/jars/"

ENV JDBC_DRIVER_JAR="${jdbc_jar_dir}connector-j.jar"
RUN curl -fsSL -o connector-j.jar https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/${jdbc_version}/mysql-connector-j-${jdbc_version}.jar
RUN mv connector-j.jar "${jdbc_jar_dir}connector-j.jar"
