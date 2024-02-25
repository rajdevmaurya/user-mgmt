FROM lolhens/baseimage-openjre
ADD target/user-mgmt-app.jar user-mgmt-app.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "user-mgmt-app.jar"]
