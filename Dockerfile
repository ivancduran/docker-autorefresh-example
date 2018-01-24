FROM golang:latest

RUN go get github.com/labstack/echo && \
    go get github.com/dgrijalva/jwt-go && \
    go get github.com/pilu/fresh

WORKDIR /demo

COPY . .

EXPOSE 8090

CMD ["fresh"]