class Restaurant < ApplicationRecord
  TYPES = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, inclusion: { in: TYPES }
  validates :address, presence: true
  validates :phone_number, presence: true
end
