build:
	docker-compose build

up:
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

shell-nginx:
	docker exec -ti nginx bash

shell-web:
	docker exec -ti web bash

shell-db:
	docker exec -ti db bash

log-nginx:
	docker-compose logs nginx  

log-web:
	docker-compose logs web  

log-db:
	docker-compose logs db  