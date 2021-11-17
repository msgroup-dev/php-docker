all: php7.3 php7.4 php7.4-bf php8.0-bf

# php 7.3 images
php7.3: php7.3-cli php7.3-cli-buster php7.3-fpm

php7.3-cli:
	docker build - -t msgroup/php:7.3-cli < 7.3/Dockerfile-cli
	docker push msgroup/php:7.3-cli

php7.3-cli-buster:
	docker build - -t msgroup/php:7.3-cli-buster < 7.3/Dockerfile-cli-buster
	docker push msgroup/php:7.3-cli-buster

php7.3-fpm:
	docker build - -t msgroup/php:7.3-fpm < 7.3/Dockerfile-fpm
	docker push msgroup/php:7.3-fpm

# php 7.4 images
php7.4: php7.4-cli php7.4-cli-buster php7.4-fpm

php7.4-cli:
	docker build - -t msgroup/php:7.4-cli < 7.4/Dockerfile-cli
	docker push msgroup/php:7.4-cli

php7.4-cli-buster:
	docker build - -t msgroup/php:7.4-cli-buster < 7.4/Dockerfile-cli-buster
	docker push msgroup/php:7.4-cli-buster

php7.4-fpm:
	docker build - -t msgroup/php:7.4-fpm < 7.4/Dockerfile-fpm
	docker push msgroup/php:7.4-fpm
#bf images
php-bf: php7.4-bf php8.0-bf

#php7.4 bf images
php7.4-bf: php7.4-fpm-buster-fb php7.4-cli-buster-fb

php7.4-fpm-buster-fb:
	docker build - -t msgroup/php:7.4-fpm-buster-bf < bf/7.4/Dockerfile-fpm
	docker push msgroup/php:7.4-fpm-buster-bf

php7.4-cli-buster-fb:
	docker build - -t msgroup/php:7.4-cli-buster-bf < bf/7.4/Dockerfile-cli
	docker push msgroup/php:7.4-cli-buster-bf

# php 8.0 bf images
php8.0-bf: php8.0-fpm-buster-fb php8.0-cli-buster-fb

php8.0-fpm-buster-fb:
	docker build - -t msgroup/php:8.0-fpm-buster-bf < bf/8.0/Dockerfile-fpm
	docker push msgroup/php:8.0-fpm-buster-bf

php8.0-cli-buster-fb:
	docker build - -t msgroup/php:8.0-cli-buster-bf < bf/8.0/Dockerfile-cli
	docker push msgroup/php:8.0-cli-buster-bf