FROM openjdk:8
MAINTAINER khorunaliyev
ENV SPRING_OUTPUT_ANSI_ENABLED \ JAVA_OPTS="-Xmx512m -Xms256m"
VOLUME /tmp
WORKDIR /usr/app
RUN mkdir -p /usr/app
COPY gradle /usr/app/gradle
RUN ./gradlew build
EXPOSE 8080
CMD ["./gradlew", "bootRun"]