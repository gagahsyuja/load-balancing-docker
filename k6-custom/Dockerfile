FROM golang:1.22-alpine as builder

RUN apk add --no-cache git
WORKDIR /go/src/go.k6.io/k6
RUN CGO_ENABLED=0 go install go.k6.io/xk6/cmd/xk6@latest
RUN CGO_ENABLED=0 xk6 build \
    --with github.com/grafana/xk6-dashboard@latest

FROM alpine:3.15
COPY --from=builder /go/src/go.k6.io/k6/k6 /usr/bin/