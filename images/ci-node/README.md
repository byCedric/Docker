# Node - Continuous Integration

A simple Node image based on Alpine Linux, CI/CD environments.

## Performance tweaks

- All dependencies are installed and updated within a single `RUN` statement to avoid intermediate containers.
- `npm` cache is removed or turned off to avoid large build images.
- `npm` progression feedback is turned off to [speed up the installation](https://gist.github.com/GavinJoyce/4f81d0bf879dad6b203e).
