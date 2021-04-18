FROM golang
RUN apt update && apt install -y protobuf-compiler \
    && rm -rf /var/lib/apt/lists/* && go get google.golang.org/protobuf/cmd/protoc-gen-go google.golang.org/grpc/cmd/protoc-gen-go-grpc

CMD [ "protoc" ]