class Product < ApplicationRecord
  # belongs_to :user
  has_many :variants, class_name: 'ProductVariant'
  has_many :product_categories
  has_many :categories, through: :product_categories
end
