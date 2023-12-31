FROM golang:1.21.0-bullseye
WORKDIR /api
COPY go.mod go.sum ./
RUN go mod download
COPY . .
EXPOSE 3000
CMD ["go", "run", "main.go"]
