FROM node:10-stretch
LABEL maintainer="spacemeowx2@gmail.com"

#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

WORKDIR /code
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt update && apt install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev && apt clean
COPY . ./
RUN npm install --verbose

