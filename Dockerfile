FROM eclipse-temurin:17-jre
WORKDIR /app

ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar /app/Lavalink.jar

# ✅ 캐시 강제 무효화
ARG CACHE_BUST=1
RUN echo "cache bust = $CACHE_BUST"

COPY application.yml /app/application.yml
RUN echo "==== /app/application.yml ====" && ls -la /app && sed -n '1,120p' /app/application.yml

# ✅ 로드 강제
CMD ["java","-jar","/app/Lavalink.jar","--spring.config.location=file:/app/application.yml"]