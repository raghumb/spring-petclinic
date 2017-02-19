FROM java:8
VOLUME /tmp
EXPOSE 8080 
 
ADD target/spring-petclinic-1.5.1.jar spring-petclinic-1.5.1.jar
RUN sh -c 'touch /spring-petclinic-1.5.1.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-petclinic-1.5.1.jar"]