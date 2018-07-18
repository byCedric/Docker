# Expo - Continuous Integration

A simple Node image based on Alpine Linux, for Expo projects in CI/CD environments.

## Dependencies

- We need `bash` to create new builds with the React Native bundler ([Metro](https://facebook.github.io/metro/)).
- Both `git` and `openssh-client` are required to push new releases (Git over SSH) with [Semantic Release](https://github.com/semantic-release/semantic-release).
- `expo-cli` is installed to interact with the Expo API, even without explicit project dependencies.

## Performance tweaks

- All dependencies are installed and updated within a single `RUN` statement to avoid intermediate containers.
- Both `apk` and `npm` caches are removed or turned off to avoid large build images.
- See `ci-node` for all other tweaks.
