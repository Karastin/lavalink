FROM eclipse-temurin:17-jre
WORKDIR /app

ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

# ✅ 캐시 깨기용: application.yml 내용이 바뀌면 레이어가 반드시 다시 만들어짐
COPY application.yml /app/application.yml

EXPOSE 2333
CMD ["java","-jar","/app/Lavalink.jar"]