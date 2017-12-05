class ProductController < ApplicationController
  def index
  	@products = Product.all.page(params[:page]).per(5)
  end

  def show
  	@product = Product.find(params[:number].to_i)
  end

  def search_results
    if params[:category] != '' && params[:status] != ''
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).where("category_id LIKE ? ", params[:category]).where("status LIKE ? ", params[:status]).page(params[:page]).per(5)
    elsif params[:category] != ''
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).where("category_id LIKE ? ", params[:category]).page(params[:page]).per(5)
    elsif params[:status] != ''
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).where("status LIKE ? ", params[:status]).page(params[:page]).per(5)

    else
      @wildcard = '%' + params[:keywords] + '%'
      @products = Product.where("name LIKE ?", @wildcard).page(params[:page]).per(5)
    end
  end
end
