FROM nginx:alpine

RUN apk add --no-cache openssl
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --chmod=755 15-local-tls.sh /docker-entrypoint.d/15-local-tls.sh
