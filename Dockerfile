#Product Catalogue
# Use a Java 8 image as the base
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the project files to the container
COPY . /app

# Build the project with Maven
RUN mvn clean install

# Expose port 8020
EXPOSE 8020

# Start the project with the specified command
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar", "server"]
