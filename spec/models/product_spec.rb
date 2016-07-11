require 'rails_helper'

describe Product do
  context "when products have comments" do

    # Initialize
    before do
      @product = Product.create!(name:"race bicycle", price: 3.00)
      @user = User.create!(:email =>"alan@example.com", :password=> "alanfidelino")
      @product.comments.create!(rating: 1, user: @user, body: "Just ok!")
      @product.comments.create!(rating: 3, user: @user, body: "Just ok!")
      @product.comments.create!(rating: 5, user: @user, body: "Just ok!")
    end

    it "returns an average rating of comments" do
      expect(@product.avg_rating).to eq(3)
    end
  end

  context "when products are created" do
    before do
      @product = Product.new(name:"", price:200)
    end

    it "should not be valid when name is not present" do
      expect(@product).not_to be_valid
    end
  end
end
