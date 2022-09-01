class Activity < ApplicationRecord
  belongs_to :category
  has_many :reviews

  def average_rating
    reviews.average(:rating) || "No ratings yet"
  end
end
