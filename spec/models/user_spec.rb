require 'rails_helper'

describe User, :type => :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:user, email:"not_an_email")
    expect(@user).to_not be_valid
  end

  it "should not validate users without passwords" do
    @user = FactoryGirl.build(:user,password:"")
    expect(@user).to_not be_valid
  end
end