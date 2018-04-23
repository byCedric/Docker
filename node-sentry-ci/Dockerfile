FROM getsentry/sentry-cli as sentry-binary
FROM bycedric/node-ci
COPY --from=sentry-binary /bin/sentry-cli /bin/sentry-cli
