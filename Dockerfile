FROM golang:1.20

WORKDIR /go

COPY go.mod .
COPY go.sum .
COPY main.go .

RUN go mod download

RUN go build -o /bin .

ENTRYPOINT ["/go/bin"]