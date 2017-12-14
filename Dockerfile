FROM alpine:3.7

RUN apk add --no-cache curl && \
        rm -rf /var/cache/apk/* && \
        curl -L https://git.io/misspell | sh && \
        mv ./bin/misspell /usr/local/bin/ && \
        misspell -v

CMD ["misspell"]
