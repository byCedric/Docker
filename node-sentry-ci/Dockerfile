FROM getsentry/sentry-cli as sentry
FROM bycedric/node-ci
COPY --from=sentry /bin/sentry-cli /usr/local/bin/sentry-cli
ENV SENTRYCLI_CDNURL='https://cdn.rawgit.com/byCedric/Docker/3c0b5f23/node-sentry-ci/cdn'
