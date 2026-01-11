# ================================
# Stage 1: Build the application
# ================================
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml and download dependencies
COPY pom.xml .
RUN mvn clean package -DskipTests

# Copy source code
COPY src ./src
RUN mvn package -DskipTests

# ================================
# Stage 2: Run the application
# ================================
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the built jar
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
