FROM maven:3.6.2 -openjdk-8-slim as mavenbuild
WORKDIR /dir
COPY . .
RUN mvn package
FROM tomcat:9.0
COPY --from=mavenbuild /dir/target/mvn-hello-world.war /usr/local/tomcat/webapps
