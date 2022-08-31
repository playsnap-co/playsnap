class Child < ApplicationRecord
  belongs_to :user
  has_many :child_activities
end
