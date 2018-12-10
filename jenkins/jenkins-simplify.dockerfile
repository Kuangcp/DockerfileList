# simple and crude 
# empty dir, with jenkins*.war

FROM frolvlad/alpine-oraclejdk8:slim

COPY . . 

EXPOSE 8080
EXPOSE 5000

CMD ["java", "-jar", "jenkins.war"]
