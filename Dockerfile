FROM golang:latest
LABEL maintainer="Tleugazy Yerassyl <tleugazy98@gmail.com>"
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]