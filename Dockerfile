FROM openjdk
LABEL authors="Abhishek"

WORKDIR /app

COPY . /app

EXPOSE 8080

RUN chmod 777 mvnw

RUN ./mvnw clean install

RUN chmod -R 777 /app/target

CMD ["java", "-jar", "/app/target/HelloWorld-0.0.1-SNAPSHOT.jar"]