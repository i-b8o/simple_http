FROM golang:latest
RUN go version
ENV GOPATH=/
COPY ./ ./

RUN go build -o simple_http ./main.go

CMD ["./simple_http"]