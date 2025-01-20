# ================================
# 1) Build Stage
# ================================
FROM ibm-semeru-runtimes:open-17.0.13_11-jdk AS build

WORKDIR /app

# Copy Maven wrapper scripts and config
COPY .mvn/ .mvn
COPY mvnw .
# Ensure mvnw is executable
RUN chmod +x mvnw

# Copy the Maven descriptor
COPY pom.xml .

# Pre-fetch dependencies (optional but often helpful for caching)
RUN ./mvnw dependency:resolve

# Copy the source code
COPY src/ src/

# Compile and Package the app (You can separate these if you want only 'compile')
RUN ./mvnw clean compile package -DskipTests

# ================================
# 2) Runtime Stage
# ================================
FROM ibm-semeru-runtimes:open-17.0.13_11-jre

WORKDIR /app

# Copy only the JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
