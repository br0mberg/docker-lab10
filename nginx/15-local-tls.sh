#!/bin/sh
set -eu

# Пара ключей принадлежит этому контейнеру и сохраняется при его перезапуске.
tls_dir=/etc/nginx/tls
mkdir -p "$tls_dir"
if [ ! -s "$tls_dir/localhost.key" ] || [ ! -s "$tls_dir/localhost.crt" ]; then
    umask 077
    openssl req -x509 -newkey rsa:2048 -nodes -days 365 \
        -keyout "$tls_dir/localhost.key" -out "$tls_dir/localhost.crt" \
        -subj "/CN=localhost" -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
fi
