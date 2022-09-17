class Child < ApplicationRecord
  belongs_to :user
  has_many :child_activities

  validates :gender, :age, presence: true
end
