class Item < ApplicationRecord
  has_many :activity_items
  has_many :activities, through: :activity_items
end
