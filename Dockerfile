FROM anapsix/alpine-java
MAINTAINER Murphy <murphylan@hotmail.com>

RUN apk update

RUN apk add wget unzip fontconfig libreoffice
RUN wget -O ipa-font.zip 'https://osdn.jp/frs/redir.php?m=iij&f=%2Fipafonts%2F51868%2FIPAfont00303.zip'
RUN mkdir /root/.fonts \
  && unzip ipa-font.zip -d /root/.fonts \
  && rm -fr ipa-font.zip
RUN fc-cache -fv

ARG JAR_FILE=build/libs/docconverter-sample-spring-boot.war
ADD ${JAR_FILE} app.war

EXPOSE 8080

ENTRYPOINT java -jar /app.war