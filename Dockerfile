FROM eclipse-temurin:17-jre
WORKDIR /app

# 🔥 캐시 강제 무효화용 (이 숫자 바꾸면 무조건 새로 빌드됨)
ARG CACHE_BUST=2

ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

COPY application.yml /app/application.yml

CMD ["java","-jar","/app/Lavalink.jar","--spring.config.location=file:/app/application.yml"]