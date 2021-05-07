class Service < ApplicationRecord
  belongs_to :user
  has_many :orders
  
  CATEGORIES = %w(construction education health programing)
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not permited category" }
end
