FROM golang:1.20-alpine

WORKDIR /go

COPY go.mod .
COPY main.go .
#
#RUN go mod download

RUN go build -o bin .

ENTRYPOINT ["/go/bin"]