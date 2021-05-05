class Service < ApplicationRecord
  has_one :user
  validates :category, uniqueness: true, presence: true
end
