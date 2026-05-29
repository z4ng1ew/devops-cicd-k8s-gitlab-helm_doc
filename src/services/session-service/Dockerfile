FROM maven:3.9-eclipse-temurin-11 AS builder
WORKDIR /app
ENV MAVEN_OPTS="-Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dmaven.wagon.http.retryHandler.count=5 -Dhttp.keepAlive=false"
COPY maven-settings.xml /root/.m2/settings.xml
COPY pom.xml ./
RUN mvn -B -s /root/.m2/settings.xml -Dmaven.wagon.rto=300000 dependency:go-offline
COPY src ./src
RUN mvn -B -s /root/.m2/settings.xml -Dmaven.wagon.rto=300000 package -DskipTests

FROM eclipse-temurin:8-jre-alpine
WORKDIR /app
RUN apk add --no-cache bash netcat-openbsd
COPY --from=builder /app/target/*.jar app.jar
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
