PHP=$(shell which php)
host=localhost
port=8080

init:
	@test -f composer.phar || curl -sS https://getcomposer.org/installer | $(PHP)


install:init
	$(PHP) composer.phar install

update:init
	$(PHP) composer.phar update

server:
	$(PHP) artisan serve --host ${host} --port ${port}
