class PagesController < ApplicationController
  def index
  end

  def about
    @about = Page.where("title = 'about us'")
  end

  def contact
    @contact = Page.where("title = 'contact'")
  end
end
