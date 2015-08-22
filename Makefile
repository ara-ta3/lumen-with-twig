PHP=$(shell which php)

init:
	@test -f composer.phar || curl -sS https://getcomposer.org/installer | $(PHP)


install:init
	$(PHP) composer.phar install

update:init
	$(PHP) composer.phar update

