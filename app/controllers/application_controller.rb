class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :grab_category

  def grab_category
    @category = Category.all.order(:name)
  end

end
