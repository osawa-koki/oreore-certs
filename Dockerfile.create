FROM ubuntu:22.04
WORKDIR /app/
RUN apt update && apt install -y openssl

ENV CERT_CSR_PATH=/app/certs/oreore-cert.csr
ENV CERT_KEY_PATH=/app/keys/oreore-key.pem
ENV CERT_PEM_PATH=/app/certs/oreore-cert.pem

COPY ./create.sh /app/create.sh
RUN chmod +x /app/create.sh

CMD ["/bin/bash", "/app/create.sh"]
