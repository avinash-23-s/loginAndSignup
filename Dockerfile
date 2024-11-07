# Use a base image with OpenJDK 8 (or any other version you need)
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file from your project into the Docker image
COPY ./target/your-app.war /app/your-app.war

# Expose the port that your app will be running on
EXPOSE 8080

# Command to run the WAR file when the container starts
CMD ["java", "-jar", "/app/your-app.war"]
