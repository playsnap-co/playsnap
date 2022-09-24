class Child < ApplicationRecord
  belongs_to :user
  has_many :child_activities
  has_one_attached :photo

  validates :gender, :age, presence: true
end
