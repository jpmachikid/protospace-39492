class Prototype < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :user
    validates :image
  end
  belongs_to :user
  has_one_attached :image
end
