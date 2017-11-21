class ProductController < ApplicationController
  def index
  	@products = Product.all.page(params[:page]).per(5)
  end

  def show
  	@product = Product.find(params[:number].to_i)
  end
end
