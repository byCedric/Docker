# SonarCloud - Continuous Integration

A simple Java image based on Alpine Linux with SonarCloud / SonarScanner preinstalled, for CI/CD environments.

> Inspired by https://stackoverflow.com/questions/39875287/run-sonarqube-scanner-with-gitlab-ci#40612088

## Performance tweaks

- All dependencies are installed and updated within a single `RUN` statement to avoid intermediate containers.
