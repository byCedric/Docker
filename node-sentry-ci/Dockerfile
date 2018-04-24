FROM getsentry/sentry-cli as sentry
FROM bycedric/node-ci
COPY --from=sentry /bin/sentry-cli /usr/local/bin/sentry-cli
