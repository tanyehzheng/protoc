FROM debian
RUN apt update && apt install -y protobuf-compiler \
    && rm -rf /var/lib/apt/lists/*
CMD [ "protoc" ]