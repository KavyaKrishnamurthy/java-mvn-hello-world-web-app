FROM maven:3.8.2-openjdk-16 as mavenbuild
WORKDIR /dir
COPY . .
RUN mvn package
FROM tomcat:jre8-openjdk-bullseye
COPY --from=mavenbuild /dir/target/mvn-hello-world.war /usr/local/tomcat/webapps
