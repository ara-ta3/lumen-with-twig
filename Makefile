PHP=$(shell which php)

install:
	@test -f composer.phar || curl -sS https://getcomposer.org/installer | $(PHP)
	$(PHP) composer.phar install


