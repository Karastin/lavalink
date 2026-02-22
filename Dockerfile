FROM eclipse-temurin:17-jre
WORKDIR /app

ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

COPY application.yml /app/application.yml

EXPOSE 2333
CMD ["java","-jar","/app/Lavalink.jar"]