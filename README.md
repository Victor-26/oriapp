# テーブル設計

## users テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| email      | string  | null: false |
| password   | string  | null: false |
| nickname   | string  | null: false |
| last_name  | string  | null: false |
| first_name | string  | null: false |
| position   | integer | null: false |
### Association

- has_many :casees
- has_many :comments


## cases テーブル

|  Column      |   Type    | Options                       |
| ------------ | --------- | ----------------------------  |
|  title       |   string  | null: false                   |
| explanation  |   text    | null: false                   |
| category_id  | integer   | null: false                   |
|   user       | reference | null: false,foreign_key: true |
### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| text        | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| case        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :case