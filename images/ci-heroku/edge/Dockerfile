FROM docker:stable

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache bash curl git nodejs nodejs-npm \
	&& npm install -g npm@latest \
	&& npm set progress=false \
	&& npm cache rm --force \
	&& curl https://cli-assets.heroku.com/install.sh | sh

COPY slack-bitbucket-deploy-pending.sh /usr/local/bin/slack-bitbucket-deploy-pending
COPY slack-bitbucket-deploy-rejected.sh /usr/local/bin/slack-bitbucket-deploy-rejected
COPY slack-bitbucket-deploy-resolved.sh /usr/local/bin/slack-bitbucket-deploy-resolved

COPY slack-gitlab-deploy-pending.sh /usr/local/bin/slack-gitlab-deploy-pending
COPY slack-gitlab-deploy-rejected.sh /usr/local/bin/slack-gitlab-deploy-rejected
COPY slack-gitlab-deploy-resolved.sh /usr/local/bin/slack-gitlab-deploy-resolved

RUN apk add --no-cache jq \
	&& curl -O https://raw.githubusercontent.com/rockymadden/slack-cli/master/src/slack \
	&& mv slack /usr/local/bin/slack \
	&& chmod +x /usr/local/bin/slack \
	&& chmod +x /usr/local/bin/slack-bitbucket-deploy-pending \
	&& chmod +x /usr/local/bin/slack-bitbucket-deploy-rejected \
	&& chmod +x /usr/local/bin/slack-bitbucket-deploy-resolved \
	&& chmod +x /usr/local/bin/slack-gitlab-deploy-pending \
	&& chmod +x /usr/local/bin/slack-gitlab-deploy-rejected \
	&& chmod +x /usr/local/bin/slack-gitlab-deploy-resolved
