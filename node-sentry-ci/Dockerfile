FROM getsentry/sentry-cli as sentry
FROM bycedric/node-ci
COPY --from=sentry /bin/sentry-cli /usr/local/bin/sentry-cli
ENV SENTRYCLI_CDNURL='https://cdn.rawgit.com/byCedric/Docker/tree/master/node-sentry-ci/cdn'
