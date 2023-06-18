FROM golang:alpine

WORKDIR /app

COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o ./webserver main.go

EXPOSE 8080

CMD ["/app/webserver"]
