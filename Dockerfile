FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests

FROM adoptopenjdk:openj9
COPY --from=build /target/portafolio-0.0.1-SNAPSHOT.jar portafolio-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["/usr/bin/java", "-jar", "portafolio-0.0.1-SNAPSHOT.jar"]
