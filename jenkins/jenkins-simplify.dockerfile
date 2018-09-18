FROM frolvlad/alpine-oraclejdk8:slim

COPY . . 

EXPOSE 8080
EXPOSE 5000

CMD ["java", "-jar", "jenkins.war"]
