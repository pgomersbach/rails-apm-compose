#!/bin/bash
docker-compose run --rm web rails g model Joke body:text
docker-compose run --rm web rails db:create
docker-compose run --rm web rails db:migrate
docker-compose run --rm web rails runner 'Joke.create(body: "Knock! Knock! Whos there? Owls say. Owls say who? Yes, they do.")'
docker-compose run --rm web rails runner 'Joke.create(body: "Knomt een man bij de ..")'

