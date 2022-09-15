class Category < ApplicationRecord
  has_many :activities, dependent: :destroy
end
