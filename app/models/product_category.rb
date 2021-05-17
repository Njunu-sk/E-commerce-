class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :categories
end
