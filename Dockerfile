version: "1"
rules:
  - base: master
    upstream: owner:master
    mergeMethod: hardreset
  - base: docs
    upstream: owner:docs
    mergeMethod: hardreset FROM alpine

LABEL "repository"="http://github.com/wei/git-sync"
LABEL "homepage"="http://github.com/wei/git-sync"
LABEL "maintainer"="Wei He <github@weispot.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
