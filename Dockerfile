
FROM maven:3.8.5-openjdk-11 as builder
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Package the application
FROM openjdk:11-jre-slim
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
