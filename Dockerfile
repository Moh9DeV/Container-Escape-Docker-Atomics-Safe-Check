FROM ubuntu:latest
WORKDIR /app
COPY atomics/T0014/check.sh .
RUN chmod +x check.sh

ENTRYPOINT ["./check.sh"]
