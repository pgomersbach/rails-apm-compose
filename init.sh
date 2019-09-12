#!/bin/bash
docker-compose run --rm web rails g model Joke body:text
docker-compose run --rm web rails db:create
docker-compose run --rm web rails db:migrate
docker-compose run --rm web rails runner 'Joke.create(body: "Sphinx of black quartz, judge my vow.")'
docker-compose run --rm web rails runner 'Joke.create(body: "The five boxing wizards jump quickly")'

