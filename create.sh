#!/bin/bash

# You need to set the following environment variables.
# - CERT_CSR_PATH
# - CERT_KEY_PATH
# - CERT_PEM_PATH

KEY_BITS=2048
DAYS_VALID=365
COMMON_NAME=localhost

openssl genpkey -algorithm RSA -out $CERT_KEY_PATH -pkeyopt rsa_keygen_bits:$KEY_BITS \
  && openssl req -new -key $CERT_KEY_PATH -out $CERT_CSR_PATH -subj "/CN=$COMMON_NAME" \
  && openssl x509 -req -days $DAYS_VALID -in $CERT_CSR_PATH -signkey $CERT_KEY_PATH -out $CERT_PEM_PATH
