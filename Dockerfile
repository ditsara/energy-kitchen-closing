FROM ruby:2.6

RUN gem install bundler

ENV app=/app \
  BUNDLE_PATH=/bundles \
  BUNDLE_BIN=/bundles/bin \
  GEM_HOME=/bundles \
  PATH="/bundles/bin:${BUNDLE_BIN}:$PATH"

WORKDIR $app
