seed:
	bundle exec rails db:seed

server:
	bundle exec rails server

up:
	docker-compose up -d

stop:
	docker-compose stop

restart:
	docker-compose restart

console:
	bundle exec rails console
