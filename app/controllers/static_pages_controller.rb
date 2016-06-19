class StaticPagesController < ApplicationController
  def index
    @products = Product.all
  end

  def about
  end

  def contact
  end

  def faq
  end
  
end
