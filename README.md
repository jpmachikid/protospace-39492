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