# musom

[![CircleCI](https://circleci.com/gh/ogontaro/musom.svg?style=svg)](https://circleci.com/gh/ogontaro/musom)
[![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate/test_coverage)

## Requirements

To run Musom on a local machine, you need to have the following dependencies installed:
* Ruby 2.5
* PostgreSQL 10.4

## Running the app

```
$ git clone git@github.com:ogontaro/musom.git
$ cd musom
$ bundle
$ bundle exec rails db:setup
$ docker-compose up -d
$ bundle exec rails start 
``` 
