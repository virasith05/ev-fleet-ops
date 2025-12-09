
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy all project files into the image
COPY . .

# Make the Maven wrapper executable
RUN chmod +x mvnw

# Build the application (skip tests to speed up)
RUN ./mvnw clean package -DskipTests

# Run the built jar (NOTE: use /, not \)
CMD ["java", "-jar", "target/ev-fleet-ops-0.0.1-SNAPSHOT.jar"]
