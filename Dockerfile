FROM golang:1.19.1-alpine

RUN apk update && apk add git

RUN mkdir /go/src/work

WORKDIR /go/src/work

ADD . /go/src/work

RUN go install golang.org/x/tools/cmd/goimports@latest