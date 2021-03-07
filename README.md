# Cafe Map

## How to start

```
touch .env
docker-compose up --build
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails webpacker:install
bundle exec rails server
```

## How to develop
```
docker-compose up
bundle exec rails server
docker-compose stop
```
