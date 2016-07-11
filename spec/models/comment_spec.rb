require 'rails_helper'

describe Comment do
  context "when user adds comments" do

   before do
    @user = User.create!(email:"alan@example.com", password:"
      alanfidelino")
    @product = Product.create!(name:"BMX Bike")

    @product.comments.create!(rating:"", user:@user, body:
      "Test comment")
   end

   it "should not be valid without a rating" do
    expect(@product.comments.rating=="").not_to be_valid
   end
  end
end