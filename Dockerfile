FROM eclipse-temurin:17-jdk-alpine

#COPY . /app/
#RUN chmod +x /app/gradlew
#RUN dos2unix ./app/gradlew
#RUN cd /app/ && ./gradlew build
#EXPOSE 8080
#ENTRYPOINT [ "java", "-jar", "/app/build/libs/demo-0.0.1-SNAPSHOT.jar" ]

COPY /build/libs/demo-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8080
WORKDIR /app/
ENTRYPOINT [ "java", "-jar", "demo-0.0.1-SNAPSHOT.jar" ]