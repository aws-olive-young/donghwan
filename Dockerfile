# Dockerfile

#기반 이미지 지정
FROM openjdk:21-slim
#인자 설정
ARG JAR_FILE=build/libs/*.jar
#컨테이너로 복사
COPY ${JAR_FILE} app.jar
#수행할 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]