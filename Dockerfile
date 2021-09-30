FROM maven:openjdk as mavenbuild
WORKDIR /dir
COPY . .
RUN mvn package
FROM tomcat:jre8-openjdk-bullseye
COPY --from=mavenbuild /dir/target/mvn-hello-world.war /usr/local/tomcat/webapps
