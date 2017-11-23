class PagesController < ApplicationController
  def index
  end

  def about
    @about = Page.where(title: 'About').first
  end

  def contact
    @contact = Page.where(title: 'Contact').first
  end
end
