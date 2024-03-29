FROM golang:1.9 as builder 
# define stage name as builder
RUN mkdir -p /go/src/test
WORKDIR /go/src/test
COPY t.go .
RUN CGO_ENABLED=O GOOS=linux go build -o app .
CMD ["./app"]
# FROM alpine:latest
# RUN apk add ca-certificates
# WORKDIR /code
# COPY -–from=builder/go/src/test/app  . 
# CMD ["./app"]

