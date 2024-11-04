FROM ubuntu:latest
WORKDIR /app
COPY . .
RUN apt-get update && apt-get -y install gcc && apt-get -y install libcap-dev && apt-get install make && apt-get -y install g++ && apt-get -y install pkg-config && apt-get -y install libsystemd-dev
RUN make isolate
RUN make install
RUN apt-get install -y dotnet-sdk-8.0
RUN chmod +x csharp.sh
RUN ./csharp.sh
