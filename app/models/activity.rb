class Activity < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :activity_items
  has_many :items, through: :activity_items
  has_many :wishlists
  has_many :users, through: :wishlists

  def average_rating
    rating = reviews.average(:rating)
    return "No ratings yet" if rating.nil?
    rating.ceil(1)
  end
end
