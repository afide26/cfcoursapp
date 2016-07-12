require 'rails_helper'

describe Comment do
  context "when user adds comments" do

   before do
    @user = User.create!(email:"alan@example.com", password:"
      alanfidelino")
    @product = Product.create!(name:"BMX Bike", price: 200)
   end

   it "should not be valid without a rating" do
    expect(Comment.new(body:"Awesome", user:@user, rating:0)).to_not be_valid
   end
  end
end