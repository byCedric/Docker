# Heroku - Continuous Integration

A simple Heroku image based on Alpine Linux and Docker-in-Docker for CI/CD environments.

> The image doesn't have the Heroku CLI as entrypoint because this caused some issues in GitLab CI environments.

## Usage

```
$ docker run --rm -e HEROKU_API_KEY="MY_KEY" bycedric/ci-heroku heroku whoami
$ docker run --rm -v ~/.netrc:/root/.netrc:ro bycedric/ci-heroku heroku whoami
```

## Dependencies

- `Bash` is added for Heroku CLI.
- `Curl` is added for Heroku CLI.
- `Git` is added to allow forked-dependencies.
- `NodeJS` and `NodeJS-NPM` is added for Heroku CLI.

## Performance tweaks

- All dependencies are installed and updated within a single `RUN` statement to avoid intermediate containers.
- `npm` cache is removed or turned off to avoid large build images.
- `npm` progression feedback is turned off to [speed up the installation](https://gist.github.com/GavinJoyce/4f81d0bf879dad6b203e).
