FROM golang:alpine
WORKDIR /biling

COPY go.mod . 
COPY go.sum .
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /biling/biling /biling/cmd/biling/main.go
EXPOSE 8088
CMD ["/biling/biling"]