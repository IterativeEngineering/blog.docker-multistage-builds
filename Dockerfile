#Dockerfile - porównanie z multistage buildem
FROM registry.access.redhat.com/ubi8/openjdk-11:1.3

WORKDIR /deployments
COPY . /deployments

RUN mvn package

EXPOSE 8080

CMD ["java", "-jar", "target/demo-webapp-0.0.1-SNAPSHOT.jar"]