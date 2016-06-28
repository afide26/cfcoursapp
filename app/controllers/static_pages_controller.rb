class StaticPagesController < ApplicationController
  def index
    @products = Product.limit(3)
  end

  def about
  end

  def contact
  end

  def faq
    @product2 = Product.find(2)
    @product3 = Product.find(3)
    @product4 = Product.find(3)
  end
  def landing_page
    @products = Product.limit(4)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from    => @email, 
                            :to      => "afidedev26@gmail.com",
                            :subject => "New message from #{@name}",
                            :body    => @message).deliver_now
  end
end
