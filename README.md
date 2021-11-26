# local-php-security-checker-docker

Run [Local PHP Security Checker](https://github.com/fabpot/local-php-security-checker).

## Usage with local

```shell
docker run --rm -v $(pwd)/composer.lock:/app/composer.lock testi
```

```shell
docker run --rm -v $(pwd):/app testi
```

```shell
docker run --rm -v $(pwd):/my_app testi -path=/my_app
```

## Usage with gitlab

```yaml
QA-security:
  interruptible: true
  image:
    name: cacahouete/local-php-security-checker-docker
    entrypoint: [""]
  stage: tests
  script:
    - local-php-security-checker
  allow_failure: true
  dependencies: []
```
