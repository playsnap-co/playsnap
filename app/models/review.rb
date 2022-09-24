class Review < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true

  def review_time
    if updated_at > created_at
      "Edited #{updated_at.strftime("%d/%m/%Y at %I:%M%p")}"
    else
      "Written #{created_at.strftime("%d/%m/%Y at %I:%M%p")}"
    end
  end
end
