class Activity < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :activity_items
  has_many :items, through: :activity_items
  has_many :wishlists
  has_many :users, through: :wishlists

  def average_rating
    reviews.average(:rating) || "No ratings yet"
  end
end
