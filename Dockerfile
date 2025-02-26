FROM eclipse-temurin:23-jre-alpine
WORKDIR /app
RUN apk add --no-cache gcc curl
COPY . .
RUN mv application-docker.yml application.yml
CMD ["java", "-jar", "Lavalink.jar"]
