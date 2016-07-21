CURRENT_DIR := $(shell pwd)

setup_tmuxinator:
	ln -fns $(CURRENT_DIR)/tmuxinator.yml $(HOME)/.tmuxinator/zensapp.yml

start: build
	dinghy start
	eval $(dinghy shellinit)

build:
	docker-compose -f docker-compose.development.yml build

up:
	docker-compose -f docker-compose.development.yml up -d

up-without-daemon:
	docker-compose -f docker-compose.development.yml up

dev: setup_tmuxinator
	tmuxinator start zensapp

down:
	docker-compose -f docker-compose.development.yml stop

ps:
	docker-compose -f docker-compose.development.yml ps

logs:
	docker-compose -f docker-compose.development.yml logs -t -f

rails:
	docker-compose -f docker-compose.development.yml exec rails /bin/bash

rails-logs:
	docker-compose -f docker-compose.development.yml logs rails

rails-console:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rails console

rails-db-migrate:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rake db:migrate

rails-routes:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rake routes

rails-restart:
	docker-compose -f docker-compose.development.yml restart rails

rails-migrate:
	docker-compose -f docker-compose.development.yml exec ./bin/rake db:migrate RAILS_ENV=development

stop:
	docker-compose -f docker-compose.development.yml stop
	rm tmp/pids/server.pid

destroy:
	docker-compose -f docker-compose.development.yml stop
	docker-compose -f docker-compose.development.yml rm --all -f
	rm tmp/pids/server.pid
