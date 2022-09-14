class Activity < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :activity_items
  has_many :items, through: :activity_items

  def average_rating
    reviews.average(:rating) || "No ratings yet"
  end
end
