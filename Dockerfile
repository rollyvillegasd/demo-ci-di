FROM eclipse-temurin:17-jdk-alpine


COPY . /app/
RUN chmod +x /app/gradlew