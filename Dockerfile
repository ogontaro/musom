FROM node:10.5.0-alpine as node
FROM ruby:2.5.1-alpine
WORKDIR /home/musom/app

COPY Gemfile* ./
COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node /usr/lib/libgcc* /usr/lib/libstdc* /usr/lib/
COPY --from=node /opt/yarn* /opt/yarn

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      yarn \
      tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk add --update --no-cache --virtual build-dependencies \
      build-base \
      curl-dev \
      git \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    gem install bundler && \
      bundle install --without development test -j4 && \
    apk del build-dependencies

COPY ./ ./
EXPOSE 3000

RUN SECRET_KEY_BASE=sljflkasjklfjklajwklsjlfkasjl RAILS_ENV=production bundle exec rails assets:precompile
CMD SECRET_KEY_BASE=sljflkasjklfjklajwklsjlfkasjl RAILS_ENV=production bundle exec rails s -p 3000 -b '0.0.0.0'
