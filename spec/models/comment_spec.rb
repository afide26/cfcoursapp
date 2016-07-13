require 'rails_helper'

describe Comment do
  context "when user adds comments" do

   before do
    @user = User.create!(email:"alan@example.com", password:"
      alanfidelino")
    @product = Product.create!(name:"BMX Bike", price: 200)
   end

   it "should not be valid without a rating" do
    expect(Comment.new(body:"Awesome bicycle", user:@user, rating:0)).to_not be_valid
   end

   it "should have a body with a minimum of 10 characters" do
    @comment = @product.comments.create(body:"Awesome bicycle", user:@user, rating:0)
    expect(@comment.body.length >= 10).to be_truthy
   end
  end
end