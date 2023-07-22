class Comment < ApplicationRecord
  with_options presence: true do
    validates :content
    validates :prototype_id
    validates :user_id
  end

  belongs_to :user
  belongs_to :prototype


end
