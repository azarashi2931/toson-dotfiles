FROM ubuntu:latest

COPY ./ /app
WORKDIR /app
RUN apt-get update && \
    apt-get install -y tzdata make
RUN make deploy
RUN make init
RUN bin/install.sh

CMD [ "/bin/bash" ]