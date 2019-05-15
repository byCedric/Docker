# [1.12.0](https://github.com/bycedric/docker/compare/1.11.3...1.12.0) (2019-05-15)


### New features

* **ci-sonarcloud:** add support for typescript in latest image ([b6dd3a6](https://github.com/bycedric/docker/commit/b6dd3a6))

## [1.11.3](https://github.com/bycedric/docker/compare/1.11.2...1.11.3) (2019-05-09)


### Bug fixes

* **ci-sonarcloud:** explicitly define the node path for typescript ([2d4d580](https://github.com/bycedric/docker/commit/2d4d580))

## [1.11.2](https://github.com/bycedric/docker/compare/1.11.1...1.11.2) (2019-05-08)


### Code refactors

* deprecate ci-node image in favor of vendor images ([63c1592](https://github.com/bycedric/docker/commit/63c1592))
* **ci-sonarcloud:** add support for typescript ([186373f](https://github.com/bycedric/docker/commit/186373f))
* **ci-sonarcloud:** upgrade to latest sonar scanner 3.3.0.1492 ([2b4fe19](https://github.com/bycedric/docker/commit/2b4fe19))

## [1.11.1](https://github.com/bycedric/docker/compare/1.11.0...1.11.1) (2019-05-01)


### Bug fixes

* **ci-heroku:** add missing bitbucket workspace and specify the source ([63adf8d](https://github.com/bycedric/docker/commit/63adf8d))

# [1.11.0](https://github.com/bycedric/docker/compare/1.10.3...1.11.0) (2019-05-01)


### New features

* **ci-heroku:** add bitbucket slack support ([96d2e58](https://github.com/bycedric/docker/commit/96d2e58))

## [1.10.3](https://github.com/bycedric/docker/compare/1.10.2...1.10.3) (2019-04-14)


### Code refactors

* deprecate ci-expo image in favor of new expo github actions ([#12](https://github.com/bycedric/docker/issues/12)) ([cb75d82](https://github.com/bycedric/docker/commit/cb75d82))

## [1.10.2](https://github.com/bycedric/docker/compare/1.10.1...1.10.2) (2019-04-12)


### Bug fixes

* **serve-laravel:** add missing php gd extension by default ([#11](https://github.com/bycedric/docker/issues/11)) ([749de50](https://github.com/bycedric/docker/commit/749de50))

## [1.10.1](https://github.com/bycedric/docker/compare/1.10.0...1.10.1) (2019-03-01)


### Code refactors

* **ci-heroku:** finetune the prebuilt slack messages ([4eb33ec](https://github.com/bycedric/docker/commit/4eb33ec))

# [1.10.0](https://github.com/bycedric/docker/compare/1.9.0...1.10.0) (2019-02-12)


### New features

* **ci-heroku:** add edge version with built in slack support ([22a76b5](https://github.com/bycedric/docker/commit/22a76b5))

# [1.9.0](https://github.com/bycedric/docker/compare/1.8.0...1.9.0) (2019-02-11)


### Bug fixes

* update dependencies to fix lodash security issue ([5ff3fe5](https://github.com/bycedric/docker/commit/5ff3fe5))


### Documentation changes

* **ci-heroku:** add usage info and warning about entrypoint ([d5f31b0](https://github.com/bycedric/docker/commit/d5f31b0))


### New features

* **ci-heroku:** add heroku image for ci deployments ([7885f36](https://github.com/bycedric/docker/commit/7885f36))

# [1.8.0](https://github.com/bycedric/docker/compare/1.7.0...1.8.0) (2019-01-28)


### Bug fixes

* **ci-node:** add missing git for forked dependencies ([#10](https://github.com/bycedric/docker/issues/10)) ([6d9307e](https://github.com/bycedric/docker/commit/6d9307e))


### Code refactors

* **serve-laravel:** sort php packages alphabetically ([c9051b7](https://github.com/bycedric/docker/commit/c9051b7))


### New features

* **serve-laravel:** add support for php7 soap ([#8](https://github.com/bycedric/docker/issues/8)) ([b3fc7ff](https://github.com/bycedric/docker/commit/b3fc7ff))


### Pipeline changes

* fix docker login script directly using password ([d74a8a0](https://github.com/bycedric/docker/commit/d74a8a0))

# [1.7.0](https://github.com/bycedric/docker/compare/1.6.0...1.7.0) (2018-10-25)


### New features

* **laravel-test:** add bcmath to support laravel telescope ([b881658](https://github.com/bycedric/docker/commit/b881658))
* **serve-laravel:** add bcmath to support laravel telescope ([4006bc8](https://github.com/bycedric/docker/commit/4006bc8))

# [1.6.0](https://github.com/bycedric/docker/compare/1.5.2...1.6.0) (2018-10-19)


### New features

* **serve-laravel:** add gmp to support hash ids out of the box ([a179c9f](https://github.com/bycedric/docker/commit/a179c9f))

## [1.5.2](https://github.com/bycedric/docker/compare/1.5.1...1.5.2) (2018-10-11)


### Bug fixes

* **ci-sonarcloud:** resolve sonar binary and fix apk del issue ([#7](https://github.com/bycedric/docker/issues/7)) ([1930253](https://github.com/bycedric/docker/commit/1930253))

## [1.5.1](https://github.com/bycedric/docker/compare/1.5.0...1.5.1) (2018-10-11)


### Bug fixes

* **ci-sonarcloud:** use new cdn with explicit platform for sonar scanner cli ([#5](https://github.com/bycedric/docker/issues/5)) ([4d16d2a](https://github.com/bycedric/docker/commit/4d16d2a))


### Code refactors

* remove old build script ([be41388](https://github.com/bycedric/docker/commit/be41388))

# [1.5.0](https://github.com/bycedric/docker/compare/1.4.4...1.5.0) (2018-09-22)


### New features

* **ci-sonarcloud:** add new openjdk versions ([#4](https://github.com/bycedric/docker/issues/4)) ([a992007](https://github.com/bycedric/docker/commit/a992007))

## [1.4.4](https://github.com/bycedric/docker/compare/1.4.3...1.4.4) (2018-09-22)


### Code refactors

* add versions layer to images ([#3](https://github.com/bycedric/docker/issues/3)) ([b352fe3](https://github.com/bycedric/docker/commit/b352fe3))


### Other chores

* add github templates for accessible contributions ([#2](https://github.com/bycedric/docker/issues/2)) ([93b04ea](https://github.com/bycedric/docker/commit/93b04ea))

## [1.4.3](https://github.com/bycedric/docker/compare/1.4.2...1.4.3) (2018-08-07)


### Bug fixes

* **ci-sonarcloud:** reverse project and organization changes ([c7d5882](https://github.com/bycedric/docker/commit/c7d5882))


### Code refactors

* **ci-sonarcloud:** remove extra configuration as mentioned in docs ([f079ff6](https://github.com/bycedric/docker/commit/f079ff6))

## [1.4.2](https://github.com/bycedric/docker/compare/1.4.1...1.4.2) (2018-08-06)


### Bug fixes

* use multiline string in yaml with new lines ([18c880e](https://github.com/bycedric/docker/commit/18c880e))

## [1.4.1](https://github.com/bycedric/docker/compare/1.4.0...1.4.1) (2018-08-06)


### Bug fixes

* create a new docker image for tag version ([127a0cf](https://github.com/bycedric/docker/commit/127a0cf))

# [1.4.0](https://github.com/bycedric/docker/compare/1.3.3...1.4.0) (2018-08-06)


### Bug fixes

* create a new release on non-lts versions ([915daf6](https://github.com/bycedric/docker/commit/915daf6))
* run travis on every release ([24ecc7c](https://github.com/bycedric/docker/commit/24ecc7c))


### New features

* implement semantic releases ([cdd00f2](https://github.com/bycedric/docker/commit/cdd00f2))


### Other chores

* skip pipelines when creating new releases ([98a88b5](https://github.com/bycedric/docker/commit/98a88b5))
* update changelog and version ([74f1560](https://github.com/bycedric/docker/commit/74f1560))


### Pipeline changes

* explicitly set stage order ([e8281b0](https://github.com/bycedric/docker/commit/e8281b0))
* reconfigure release with jobs ([d628be6](https://github.com/bycedric/docker/commit/d628be6))

## [1.3.3](https://github.com/bycedric/docker/compare/1.3.2...1.3.3) (2018-08-06)


### Bug fixes

* **ci-sonarcloud:** use working expression to detect pull requests ([5229432](https://github.com/bycedric/docker/commit/5229432))


### Other chores

* update changelog and version ([8e494d6](https://github.com/bycedric/docker/commit/8e494d6))



## [1.3.2](https://github.com/bycedric/docker/compare/1.3.1...1.3.2) (2018-08-06)


### Bug fixes

* **ci-sonarcloud:** allow extra parameters to pass through ([56f9dad](https://github.com/bycedric/docker/commit/56f9dad))
* **ci-sonarcloud:** improve pull request support by defining the branch name ([34a0969](https://github.com/bycedric/docker/commit/34a0969))
* **ci-sonarcloud:** reuse branch name as pull request key ([9a81e32](https://github.com/bycedric/docker/commit/9a81e32))
* **ci-sonarcloud:** use organization and project if explicitly defined ([0194d09](https://github.com/bycedric/docker/commit/0194d09))


### Code style changes

* **ci-sonarcloud:** remove extraneous white line ([05a595a](https://github.com/bycedric/docker/commit/05a595a))


### Other chores

* update changelog and version ([8987230](https://github.com/bycedric/docker/commit/8987230))



## [1.3.1](https://github.com/bycedric/docker/compare/1.3.0...1.3.1) (2018-08-06)


### Bug fixes

* **laravel-test:** add mysql support for laravel tests ([bd66138](https://github.com/bycedric/docker/commit/bd66138))


### Other chores

* update changelog and version ([dd13ab9](https://github.com/bycedric/docker/commit/dd13ab9))



# [1.3.0](https://github.com/bycedric/docker/compare/1.2.0...1.3.0) (2018-08-05)


### Bug fixes

* **ci-sonarcloud:** add git for sonarcloud analysis ([ce69e29](https://github.com/bycedric/docker/commit/ce69e29))


### New features

* **ci-sonarcloud:** add bitbucket pipelines run script for sonarcloud ([ce1fc92](https://github.com/bycedric/docker/commit/ce1fc92))


### Other chores

* update changelog and version ([7a9f987](https://github.com/bycedric/docker/commit/7a9f987))



# [1.2.0](https://github.com/bycedric/docker/compare/1.1.0...1.2.0) (2018-08-02)


### New features

* **ci-sonarcloud:** add node support for sonarcloud scanners ([53cc8f1](https://github.com/bycedric/docker/commit/53cc8f1))


### Other chores

* update changelog and version ([f5c7c48](https://github.com/bycedric/docker/commit/f5c7c48))



# [1.1.0](https://github.com/bycedric/docker/compare/1.0.5...1.1.0) (2018-07-30)


### Bug fixes

* add missing maintainer labels to ci images ([184f064](https://github.com/bycedric/docker/commit/184f064))


### Code style changes

* **ci-sonarcloud:** start with ampersand instead of end ([8830004](https://github.com/bycedric/docker/commit/8830004))


### Documentation changes

* add travis build badge to readme ([a27a13b](https://github.com/bycedric/docker/commit/a27a13b))


### New features

* **ci-sonarcloud:** add basic image for sonarcloud scans ([c16c6c4](https://github.com/bycedric/docker/commit/c16c6c4))


### Other chores

* update changelog and version ([b0d7168](https://github.com/bycedric/docker/commit/b0d7168))



## [1.0.5](https://github.com/bycedric/docker/compare/1.0.4...1.0.5) (2018-07-20)


### Bug fixes

* **serve-laravel:** explicitly mark supervisor as root user ([bf4356d](https://github.com/bycedric/docker/commit/bf4356d))


### Other chores

* update changelog and version ([c57df9f](https://github.com/bycedric/docker/commit/c57df9f))



## [1.0.4](https://github.com/bycedric/docker/compare/1.0.3...1.0.4) (2018-07-20)


### Bug fixes

* **serve-laravel:** add curl for server to server communication ([111a597](https://github.com/bycedric/docker/commit/111a597))


### Other chores

* update changelog and version ([28000f6](https://github.com/bycedric/docker/commit/28000f6))



## [1.0.3](https://github.com/bycedric/docker/compare/1.0.2...1.0.3) (2018-07-20)


### Other chores

* update changelog and version ([206237e](https://github.com/bycedric/docker/commit/206237e))



## [1.0.2](https://github.com/bycedric/docker/compare/1.0.1...1.0.2) (2018-07-20)


### Bug fixes

* **serve-laravel:** add fileinfo extension for uploads ([7e18026](https://github.com/bycedric/docker/commit/7e18026))


### Pipeline changes

* add laravel test image to travis ([142bc7d](https://github.com/bycedric/docker/commit/142bc7d))



## [1.0.1](https://github.com/bycedric/docker/compare/1.0.0...1.0.1) (2018-07-18)


### New features

* **ci-node:** add node ci image with performance tweaks ([b90c9c9](https://github.com/bycedric/docker/commit/b90c9c9))


### Other chores

* add changelog and bump version number ([0498e7d](https://github.com/bycedric/docker/commit/0498e7d))
* update changelog with new `ci-node` ([c9d3ce6](https://github.com/bycedric/docker/commit/c9d3ce6))


### Pipeline changes

* improve travis branch naming ([c295526](https://github.com/bycedric/docker/commit/c295526))



# [1.0.0](https://github.com/bycedric/docker/compare/d24745c...1.0.0) (2018-07-18)


### Bug fixes

* **node-sentry-ci:** use master as leading cdn branch ([557db7f](https://github.com/bycedric/docker/commit/557db7f))
* pinned php to `7.1` to have xdebug working ([d24745c](https://github.com/bycedric/docker/commit/d24745c))
* **laravel-serve:** add missing `php7-json` and `php7-session` packages ([93f0652](https://github.com/bycedric/docker/commit/93f0652))
* **laravel-test:** install gd php extension ([41cecc1](https://github.com/bycedric/docker/commit/41cecc1))
* **laravel-test:** install zip php extension ([d760134](https://github.com/bycedric/docker/commit/d760134))
* **node-sentry-ci:** add cdn to docker ignore to minimise images ([3e8efc8](https://github.com/bycedric/docker/commit/3e8efc8))
* **node-sentry-ci:** use custom cdn for installing with npm ([4d1cd66](https://github.com/bycedric/docker/commit/4d1cd66))
* prepend `bycedric/` namespace to the images ([dfb969e](https://github.com/bycedric/docker/commit/dfb969e))
* **node-sentry-ci:** use proper raw git cdn url ([a60fa96](https://github.com/bycedric/docker/commit/a60fa96))
* **node-sentry-ci:** use proper subdirectory in cdn ([77e51b3](https://github.com/bycedric/docker/commit/77e51b3))
* **serve-larave:** add missing php fpm configuration ([cb5c2f8](https://github.com/bycedric/docker/commit/cb5c2f8))
* **serve-larave:** remove duplicate php pdo install ([4c443b4](https://github.com/bycedric/docker/commit/4c443b4))
* **serve-larave:** use underscore notation for pdo extensions ([3497da0](https://github.com/bycedric/docker/commit/3497da0))
* **serve-laravel:** add iconv php extension for symfony ([684f047](https://github.com/bycedric/docker/commit/684f047))
* **serve-laravel:** add missing php dom extension for mail rendering ([c3e6477](https://github.com/bycedric/docker/commit/c3e6477))
* **serve-laravel:** add missing php tokenizer dependency ([007aa70](https://github.com/bycedric/docker/commit/007aa70))
* **webapp-serve:** use server file environment variable instead of hard coded index.html ([bb026b0](https://github.com/bycedric/docker/commit/bb026b0))


### Code refactors

* **ci-expo:** move to dedicated images folder ([bf5adb2](https://github.com/bycedric/docker/commit/bf5adb2))
* **ci-expo:** remove sonarqube scanner ([91f9f28](https://github.com/bycedric/docker/commit/91f9f28))
* **ci-expo:** use the more descriptive `npm cache rm` ([6ed416b](https://github.com/bycedric/docker/commit/6ed416b))
* **laravel-serve:** rename `laravel-serve` to `serve-laravel` ([a89f88e](https://github.com/bycedric/docker/commit/a89f88e))
* **laravel-serve:** use serve as base image ([146463f](https://github.com/bycedric/docker/commit/146463f))
* **laravel-test:** move to dedicated images folder ([abd120f](https://github.com/bycedric/docker/commit/abd120f))
* **node-ci:** move to dedicated deprecations folder ([df8d586](https://github.com/bycedric/docker/commit/df8d586))
* **node-ci:** use node lts version instead of latest ([4f49801](https://github.com/bycedric/docker/commit/4f49801))
* **node-sentry-ci:** remove sentry docker image and cdn ([4b85131](https://github.com/bycedric/docker/commit/4b85131))
* **node-sentry-ci:** use local binary folder and simplify container name ([4854c0d](https://github.com/bycedric/docker/commit/4854c0d))
* **serve:** move enable to entrypoint to allow overrides ([1b511ed](https://github.com/bycedric/docker/commit/1b511ed))
* **serve:** move to dedicated images folder ([56aa2ce](https://github.com/bycedric/docker/commit/56aa2ce))
* **serve:** remove the extraneous `.tmpl` extension ([9030902](https://github.com/bycedric/docker/commit/9030902))
* **serve:** remove unused start script ([4220c28](https://github.com/bycedric/docker/commit/4220c28))
* **serve:** revert back to command templating, enabling and starting ([e9be7bf](https://github.com/bycedric/docker/commit/e9be7bf))
* **serve:** simplify the server config by removing location block ([49c34a5](https://github.com/bycedric/docker/commit/49c34a5))
* **serve:** use latest alpine and install nginx from official repository ([c33d0a0](https://github.com/bycedric/docker/commit/c33d0a0))
* **serve:** use nginx site helper to improve customisation ([49a5ffa](https://github.com/bycedric/docker/commit/49a5ffa))
* **serve:** use plain nginx alpine instead of perl ([cefa764](https://github.com/bycedric/docker/commit/cefa764))
* **serve:** use single command to template, enable and start everything ([74126f9](https://github.com/bycedric/docker/commit/74126f9))
* **serve-laravel:** move to dedicated images folder ([88b5502](https://github.com/bycedric/docker/commit/88b5502))
* **serve-webapp:** move to dedicated images folder ([eef32cf](https://github.com/bycedric/docker/commit/eef32cf))
* **serve-webapp:** rename `webapp-serve` to `serve-webapp` ([21b5cc7](https://github.com/bycedric/docker/commit/21b5cc7))


### Documentation changes

* **ci-expo:** remove grammar errors in readme ([facea7d](https://github.com/bycedric/docker/commit/facea7d))
* **node-ci:** add deprecation warning ([b34abdc](https://github.com/bycedric/docker/commit/b34abdc))


### New features

* **ci-expo:** add image for Expo CI/CD environments ([bd63316](https://github.com/bycedric/docker/commit/bd63316))
* **laravel-serve:** first draft of the laravel-serve container ([13505ec](https://github.com/bycedric/docker/commit/13505ec))
* **laravel-test:** upgrade to php 7.2 with xdebug 2.6.0 ([a5fcb8b](https://github.com/bycedric/docker/commit/a5fcb8b))
* **laravel-test:** use the latest npm when building image ([a5d9451](https://github.com/bycedric/docker/commit/a5d9451))
* **node-ci:** add git as system library for improved npm usage ([6b95d15](https://github.com/bycedric/docker/commit/6b95d15))
* add bash script to locally update all images ([d935786](https://github.com/bycedric/docker/commit/d935786))
* add changelog generation ([d7ae109](https://github.com/bycedric/docker/commit/d7ae109))
* **node-ci:** add patched node alpine image for `npm ci` ([7c6f72e](https://github.com/bycedric/docker/commit/7c6f72e))
* add node scripts for ci management ([ffa2ac0](https://github.com/bycedric/docker/commit/ffa2ac0))
* **node-sentry-ci:** add cdn update script and add all binary versions ([9e6a6b2](https://github.com/bycedric/docker/commit/9e6a6b2))
* **node-sentry-ci:** add patched node alpine image for `sentry-cli` ([ca7102c](https://github.com/bycedric/docker/commit/ca7102c))
* **serve:** add nginx site helper to enable, disable and build templates ([4da235f](https://github.com/bycedric/docker/commit/4da235f))
* **serve:** create simple env-configurable serve image ([afb5483](https://github.com/bycedric/docker/commit/afb5483))
* **serve-laravel:** add php pdo and both mysql and sqlite by default ([f79ee6f](https://github.com/bycedric/docker/commit/f79ee6f))
* **webapp-serve:** create simple web app serve image ([fb103bb](https://github.com/bycedric/docker/commit/fb103bb))


### Other chores

* **node-sentry-ci:** add deprecation warning ([68dbe2a](https://github.com/bycedric/docker/commit/68dbe2a))
* **node-sentry-cli:** add latest alpine binaries to cdn ([b15c0c8](https://github.com/bycedric/docker/commit/b15c0c8))


### Pipeline changes

* add travis configuration ([be4717f](https://github.com/bycedric/docker/commit/be4717f))
* clean travis images names ([0bb189e](https://github.com/bycedric/docker/commit/0bb189e))
* limit branches to develop and master ([a08a8df](https://github.com/bycedric/docker/commit/a08a8df))
* make travis run in parallel ([56ba248](https://github.com/bycedric/docker/commit/56ba248))
* move to single parallel jobs ([09b76df](https://github.com/bycedric/docker/commit/09b76df))
* shorten git commit as docker tag ([8522ead](https://github.com/bycedric/docker/commit/8522ead))
* update travis configuration and fix environment variables ([655f8a4](https://github.com/bycedric/docker/commit/655f8a4))
* use short commit instead of short tag ([e8dafc3](https://github.com/bycedric/docker/commit/e8dafc3))
