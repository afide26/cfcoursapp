class StaticPagesController < ApplicationController
  def index
    @products = Product.limit(3)
  end

  def about
  end

  def contact
  end

  def faq
    @products = Product.all
  end
  def landing_page
    @products = Product.limit(4)
  end
end
