FROM openjdk:24-slim-bullseye
EXPOSE 8080
ENV APP_HOME /usr/src/app
COPY target/*.jar $APP_HOME/app.jar
WORKDIR $APP_HOME
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
