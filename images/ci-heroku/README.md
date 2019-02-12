# Heroku - Continuous Integration

A simple [Heroku CLI][1] image based on Alpine Linux and [Docker-in-Docker][2] with [`Slack CLI`][4], for CI/CD environments.

> The image doesn't have the Heroku CLI as entrypoint, this caused some issues in [GitLab CI][3] environments.

## Usage

```
$ docker run --rm -e HEROKU_API_KEY="MY_KEY" bycedric/ci-heroku heroku whoami
$ docker run --rm -v ~/.netrc:/root/.netrc:ro bycedric/ci-heroku heroku whoami
```

## Slack notifications

You can use a set of predefined slack messages to make deployment notifications as easy as:

```
$ docker run --rm -e SLACK_CLI_TOKEN="MY_KEY" bycedric/ci-heroku slack-gitlab-deploy-pending --channel '#deployments'
$ docker run --rm -e SLACK_CLI_TOKEN="MY_KEY" bycedric/ci-heroku slack-gitlab-deploy-rejected --channel '#deployments'
$ docker run --rm -e SLACK_CLI_TOKEN="MY_KEY" bycedric/ci-heroku slack-gitlab-deploy-resolved --channel '#deployments'
```

> These messages are built for GitLab CI's tags jobs, make sure you have them available.

## Dependencies

- `Bash` is added for Heroku CLI.
- `Curl` is added for Heroku CLI and Slack CLI.
- `Git` is added to allow forked-dependencies.
- `Jq` is added for Slack CLI.
- `NodeJS` and `NodeJS-NPM` is added for Heroku CLI.

## Performance tweaks

- All dependencies are installed and updated within a single `RUN` statement to avoid intermediate containers.
- `npm` cache is removed or turned off to avoid large build images.
- `npm` progression feedback is turned off to [speed up the installation][0].

--- ---

<p align="center">
    with :heart: byCedric
</p>

[0]: https://gist.github.com/GavinJoyce/4f81d0bf879dad6b203e
[1]: https://devcenter.heroku.com/articles/heroku-cli#standalone-installation
[2]: https://hub.docker.com/_/docker
[3]: https://docs.gitlab.com/ce/ci
[4]: https://github.com/rockymadden/slack-cli
