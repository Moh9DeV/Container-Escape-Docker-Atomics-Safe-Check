FROM ubuntu:latest
WORKDIR /app
COPY atomics/T0015/check.sh .
RUN chmod +x check.sh

ENTRYPOINT ["./check.sh"]
