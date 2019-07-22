FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /app
WORKDIR /app
ADD email-service /app/email-service

CMD ["./email-service"]
