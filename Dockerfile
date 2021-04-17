FROM google/dart as dart
RUN pub global activate protoc_plugin

FROM golang
RUN apt update && apt install -y protobuf-compiler \
    && rm -rf /var/lib/apt/lists/* && go get google.golang.org/protobuf/cmd/protoc-gen-go google.golang.org/grpc/cmd/protoc-gen-go-grpc
COPY --from=dart /root/.pub-cache/bin /bin
CMD [ "protoc" ]