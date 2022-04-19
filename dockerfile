FROM ubuntu
RUN apt update
RUN apt install unzip
WORKDIR /Server
COPY terraria-server-1436.zip ./server.zip
RUN unzip server.zip
RUN mv ./1436/Linux ./Bin
RUN rm -rf ./1436
RUN rm -rf ./server.zip
COPY start.sh ./start.sh
RUN ls
RUN chmod +x ./Bin/TerrariaServer
RUN chmod +x ./Bin/TerrariaServer.bin.x86_64
ENTRYPOINT "./start.sh"