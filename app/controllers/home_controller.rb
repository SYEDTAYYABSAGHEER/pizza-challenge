class HomeController < ApplicationController
  def index 
    @products = Product.includes(:variants)
  end
end
