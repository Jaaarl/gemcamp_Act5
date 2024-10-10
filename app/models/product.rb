class Product < ApplicationRecord
  validates :name, presence:true, uniqueness: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }

  has_many :reviews, dependent: :destroy
end