class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes
  attachment :image

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
  
end
