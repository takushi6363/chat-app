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

* ... 

# テーブル設計

## user テーブル

| Column   | Type   | Oputions     |
| -------- | ------ | ------------ |
| name     | string | null: false  |
| email    | string | null: false  |
| password | string | null: false  |

### Association

- has_many :room_users
- has_many :rooms, through: rooms_users
_ has_many :messages

## room テーブル

| Column  | Type   | Oputions     |
| ------- | ------ | ------------ |
| name    | string | null: false  |

### Association

- has_many :room_users
- has_many :users, throught: room_users
- has_many :messages

## room_users テーブル

| Column  | Type        | Oputions                       |
| ------- | ----------- | ------------------------------ | 
| user    | references  | null: false, foreign_key: ture |
| room    | references  | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| column  | Type        | Oputions                       |
|  ------ | ----------- | ------------------------------ |
| content | string      |                                |
| user    | references  | null: false, foreign_key: true |
| room    | references  | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user