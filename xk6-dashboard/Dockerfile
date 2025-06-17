FROM cimg/go:1.24.4 AS builder

WORKDIR /app

# Get xk6 and build custom k6 with dashboard output
RUN go install go.k6.io/xk6/cmd/xk6@latest && \
    xk6 build --with github.com/grafana/xk6-dashboard

# Final image
FROM alpine:latest
COPY --from=builder /app/k6 /usr/bin/k6
EXPOSE 5665

ENTRYPOINT ["sleep", "infinity"]
