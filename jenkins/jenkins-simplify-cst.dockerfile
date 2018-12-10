# empty dir, with jenkins*.war

FROM frolvlad/alpine-oraclejdk8:slim

COPY . . 

RUN apk --no-cache add tzdata  && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

EXPOSE 8080
EXPOSE 5000

CMD ["java", "-jar", "jenkins.war"]
