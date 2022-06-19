FROM maven:3.8.1-openjdk-11

RUN mkdir ./docker
WORKDIR /docker
COPY ./ /docker
RUN mvn dependency:resolve
RUN mvn clean install -DskipTests
