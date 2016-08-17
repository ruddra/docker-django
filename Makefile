include app.conf

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
	docker exec -ti dg01 bash

shell-db:
	docker exec -ti db bash

log-nginx:
	docker-compose logs -f nginx  

log-web:
	docker-compose logs -f web  

log-db:
	docker-compose logs -f db

clone:
	rm -rf src; git clone $(gitrepo) src