FROM maven:3-adoptopenjdk-11-openj9

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN mvn package

ENV PORT 5000
EXPOSE $PORT
CMD [ "sh", "-c", "mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=${PORT}" ]
