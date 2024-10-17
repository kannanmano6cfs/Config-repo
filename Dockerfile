#Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the application JAR file to the container
COPY target/EurekaServer-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port the app runs on
EXPOSE 8761

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
