class Service < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews, dependent: :destroy
  
  CATEGORIES = %w(construction education health programing)
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not permited category" }
  validates :description, presence: true
  validates :price, presence: true
end
