FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD /target/das-bot-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8080
ENV TZ="America/New_York"
ENV JAVA_OPTS=""
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar","/app.jar"]
LABEL maintainer "Kishan Jasti"