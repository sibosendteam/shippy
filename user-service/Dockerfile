FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /app
WORKDIR /app
ADD user-service /app/user-service

CMD ["./user-service"]
