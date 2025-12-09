FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN ./mvnw.cmd clean package -DskipTests
CMD ["java", "-jar", "target\ev-fleet-ops-0.0.1-SNAPSHOT.jar"]
