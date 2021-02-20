# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false, default: "" |
| password              | string | null: false, default: "" |
| first_name            | string | null: false |
| last_name             | string | null: false |
| first_name_kana       | string | null: false |
| last_name_kana        | string | null: false |
| birth_date            | date   | null: false |

### Association

- has_many :items
- has_many :orders
- has_many :pay_forms

## items テーブル

| Column                 | Type   | Options     |
| ---------------------- | ------ | ----------- |
| seller_user_id         | references | null: false, foreign_key: true |
| name                   | string | null: false |
| image                  | string | null: false |
| info                   | text   | null: false |
| category_id            | integer | null: false |
| sales_status_id        | integer | null: false |
| shipping_fee_status_id | integer | null: false |
| prefecture_id          | integer | null: false |
| scheduled_delivery_id  | integer | null: false |
| price                  | integer | null: false |

### Association

- belongs_to :user
- belongs_to :order

## orders テーブル

| Column   | Type       | Options                    |
| -------- | ---------- | -------------------------- |
| buyer_user_id  | references | null: false, foreign: true |
| item_id  | references | null: false, foreign: true |

### Association

- belongs_to :user
- belongs_to :order
- has_one :pay_forms

## pay_forms テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| user_id        | references | null: false, foreign: true |
| postal_code    | string     | null: false |
| prefecture_id  | integer    | null: false |
| city           | string     | null: false |
| addresses      | string     | null: false |
| building       | string     | null: false |
| phone_number   | integer    | null: false |

### Association

- belongs_to :user
- belongs_to :order