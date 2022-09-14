class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :children, dependent: :destroy
  has_many :wishlists
  has_many :activities, through: :wishlists
  has_many :hearts
  has_many :activities, through: :hearts

  has_one_attached :photo
end
