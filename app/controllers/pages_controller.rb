class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @categories = Category.joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end
end
