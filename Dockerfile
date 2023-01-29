FROM openjdk:8
MAINTAINER khorunaliyev
ENV SPRING_OUTPUT_ANSI_ENABLED \ JAVA_OPTS="-Xmx512m -Xms256m"
COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo.jar"]