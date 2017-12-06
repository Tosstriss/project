class ProductController < ApplicationController
  def index
  	@products = Product.all.page(params[:page]).per(5)
  end

  def show
  	@product = Product.find(params[:number].to_i)
  end

  def search_results
    if params[:status] != ''
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).where("status LIKE ? ", params[:status]).page(params[:page]).per(5)
    else
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).page(params[:page]).per(5)
    end
  end

  def category_search
    if params[:category] != ''
      @products = Product.where("category_id LIKE ? ", params[:category]).page(params[:page]).per(5)
    else
      @products = Product.all.page(params[:page]).per(5)
    end
  end

end
