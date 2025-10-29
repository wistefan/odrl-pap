# Multi-stage build for ODRL-PAP Java project using Quarkus

# Build stage
FROM maven:3.9-eclipse-temurin-17-alpine AS build

# Set working directory
WORKDIR /app

# Copy the entire project
COPY . .

# Create rego resource list (as mentioned in README for native builds)
RUN if [ -f "./scripts/create-rego-resource-list.sh" ]; then \
        chmod +x ./scripts/create-rego-resource-list.sh && \
        ./scripts/create-rego-resource-list.sh; \
    fi

# Download dependencies and compile the project
RUN mvn clean package -DskipTests

# Runtime stage - using Eclipse Temurin instead of deprecated OpenJDK
FROM eclipse-temurin:17-jre-alpine

# Install curl for health checks
RUN apk add --no-cache curl

# Create app user for security
RUN addgroup -g 1001 -S app && \
    adduser -u 1001 -S app -G app

# Set working directory
WORKDIR /app

# Copy compiled JAR from build stage
COPY --from=build /app/target/quarkus-app/ ./

# Change ownership to app user
RUN chown -R app:app /app

# Switch to app user
USER app

# Expose port (default Quarkus port is 8080)
EXPOSE 8080

# Health check endpoint
HEALTHCHECK --interval=30s --timeout=3s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:8080/q/health || exit 1

# Set default environment variables (non-sensitive defaults only)
ENV GENERAL_PEP=apisix
ENV QUARKUS_REST_CLIENT_OPA_YAML_URL=http://localhost:8181
ENV QUARKUS_DATASOURCE_JDBC_URL=jdbc:postgresql://localhost:5432/pap

# Note: Set sensitive variables like passwords via docker run -e or docker-compose
# ENV QUARKUS_DATASOURCE_USERNAME=postgres
# ENV QUARKUS_DATASOURCE_PASSWORD=postgres

# Run the Quarkus application
ENTRYPOINT ["java", "-jar", "quarkus-run.jar"]
