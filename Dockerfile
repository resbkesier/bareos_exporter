FROM golang as builder
RUN go get -d -v github.com/dreyau/bareos_exporter
WORKDIR /go/src/github.com/dreyau/bareos_exporter
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o bareos_exporter .

FROM busybox:latest

ENV pgport 5432
ENV pghost 127.0.0.1
ENV pguser bareos
ENV endpoint /metrics
ENV port 9625

WORKDIR /bareos_exporter
COPY --from=builder /go/src/github.com/dreyau/bareos_exporter/bareos_exporter bareos_exporter

CMD ./bareos_exporter -port $port -endpoint $endpoint -u $pguser -h $pghost -P $pgport -p pw/auth
EXPOSE $port
