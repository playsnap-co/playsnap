class Review < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true
end
