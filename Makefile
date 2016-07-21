CURRENT_DIR := $(shell pwd)

setup_tmuxinator:
	ln -fns $(CURRENT_DIR)/tmuxinator.yml $(HOME)/.tmuxinator/myapp.yml

start:
	dinghy start
	eval $(dinghy shellinit)
	docker-compose -f docker-compose.development.yml build

up:
	docker-compose -f docker-compose.development.yml up -d

rails:
	docker-compose -f docker-compose.development.yml exec rails /bin/bash

dev: setup_tmuxinator
	tmuxinator start myapp

rails-console:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rails console

rails-db-migrate:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rake db:migrate

rails-routes:
	docker-compose -f docker-compose.development.yml exec rails /app/bin/rake routes

stop:
	docker-compose -f docker-compose.development.yml stop
	rm tmp/pids/server.pid

restart-rails:
	docker-compose -f docker-compose.development.yml restart rails

destroy:
	docker-compose -f docker-compose.development.yml rm --all -f
	rm tmp/pids/server.pid

migrate:
	docker-compose -f docker-compose.development.yml rails ./bin/rake db:migrate RAILS_ENV=development
