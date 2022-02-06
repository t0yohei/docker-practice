FROM ubuntu
RUN apt-get update && apt-get install -y vim
RUN mkdir Test
WORKDIR /Test
RUN echo "hello wrold" > sample
ENV BD_USER_="user" \
  DB_PASSWORD="password"
COPY ./sample2 /Test
