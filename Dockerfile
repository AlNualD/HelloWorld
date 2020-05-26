FROM openjdk:8-jdk-alpine
MAINTAINER AL
WORKDIR serverfiles/
ADD ./src/ ./src/
RUN mkdir bin
RUN javac -d ./bin/ -sourcepath ./src src/HelloWorld/Main.java
CMD ["java", "-classpath", "./bin", "HelloWorld.Main"]
