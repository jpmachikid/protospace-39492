# Table設計

## users table

| column             | Type      | Options       |
| ------------------ | --------- | ------------- |
| name               | string    | null: false   |
| email              | string    | null: false, unique   |
| encrypted_password | string    | null: false   |
| profile               | text    | null: false   |
| occupation               | text    | null: false   |
| position               | string    | null: false   |

### Association

- has_many :prototypes
- has_many :comments

## prototypes table

| column             | Type      | Options       |
| ------------------ | --------- | ------------- |
| title               | string    | null: false   |
| catch_copy              | text    | null: false   |
| concept | text    | null: false   |
| user | references    | null: false, external_key   |

### Association

- belongs_to :user
- has_many :comments

## comments table

| column             | Type      | Options       |
| ------------------ | --------- | ------------- |
| content               | text    | null: false   |
| prototype              | references    | null: false, external_key   |
| user | references    | null: false, external_key   |


### Association

- belongs_to :user
- belongs_to :prototype
