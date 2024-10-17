FROM golang:1.19-alpine

WORKDIR /go-docker-actions

COPY . .

RUN go mod download
RUN go build -o go-docker-actions

CMD ["./go-docker-actions"]


