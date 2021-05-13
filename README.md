# Commands

## アプリ再作成時

```
$ docker-compose run web rails new . --force --database=mysql
$ docker-compose build
$ docker-compose up -d
$ docker-compose run web bundle exec rails db:create
```

## アプリ起動時

```
$ docker-compose up -d
```

## コンテナ停止

```
$ docker-compsoe stop
```

## コンテナ削除

```
$ docker-compsoe down
```


# Principle

- Don't Repeat Yourself:DRY
- Convention Over Configuration



# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# railsPreparation
