# NodeJS container for Laravel

This is a [Docker](http://www.docker.com) image for [NodeJS](https://nodejs.org/) to be used with the [Laravel PHP Framework](http://laravel.com/).

An automated build for this repo is available on the [Docker Hub](https://registry.hub.docker.com/u/vcarreira/node/).

## Running node commands
The container working directory is the volume ```/var/www```. You can run any node command like this:

```
docker run -t --rm -v $(pwd):/var/www vcarreira/node <node command args here>
```
## Examples

The following examples mount the current directory to /var/www running inside the container.

### Running npm

```
docker run -t --rm -v $(pwd):/var/www vcarreira/node npm install
```

### Running gulp

```
docker run -t --rm -v $(pwd):/var/www vcarreira/node gulp
```

### Running bower

```
docker run -t --rm -v $(pwd):/var/www vcarreira/node bower install desandro/masonry
```

## Related Laravel images

This image works well when used with the [Docker Laravel](https://github.com/vcarreira/docker-laravel) multi-container solution.

Images used by [Docker Laravel](https://github.com/vcarreira/docker-laravel)
  - [vcarreira/nginx-php5-fpm](https://registry.hub.docker.com/u/vcarreira/nginx-php5-fpm)
  - [vcarreira/redis](https://registry.hub.docker.com/u/vcarreira/redis)
  - [vcarreira/composer](https://registry.hub.docker.com/u/vcarreira/composer)
  - [vcarreira/artisan](https://registry.hub.docker.com/u/vcarreira/artisan)
  - [vcarreira/node](https://registry.hub.docker.com/u/vcarreira/node)
  - [vcarreira/phpspec](https://registry.hub.docker.com/u/vcarreira/phpspec)
  - [vcarreira/phpunit](https://registry.hub.docker.com/u/vcarreira/phpunit)

---

:ok_hand: Happy Coding.

If you have any feedback or questions, feel free to contact me on Twitter with [@vcarreira](https://twitter.com/vcarreira) or email with [vitor.carreira@gmail.com](mailto:vitor.carreira@gmail.com).
