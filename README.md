# Innovative-Barcodes

http://innovative-barcodes-production.herokuapp.com

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

## Deploying

If you have previously run the `./bin/setup` script,
you can deploy to staging and production with:

    $ ./bin/deploy staging
    $ ./bin/deploy production

Make sure you install the heroku-buildpack-apt with the normal Ruby buildpack.

    $ heroku buildpacks:add https://github.com/heroku/heroku-buildpack-ruby
    $ heroku buildpacks:add --index 1 https://github.com/ddollar/heroku-buildpack-apt

##ENV 

ZBAR_LIB=/app/.apt/usr/lib/libzbar.so.0.2.0
AWS_ACCESS_KEY_ID= ...
AWS_BUCKET_NAME= ...
AWS_SECRET_KEY= ...