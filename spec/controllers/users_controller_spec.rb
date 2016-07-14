require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:user_two) {FactoryGirl.create(:user_two)}

  describe "GET #show" do

    context "User is logged in" do
      before do
        sign_in user
      end

      it "loads correct user details" do
        get :show, id: user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: user.id
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "GET #edit" do
    context "User is logged in and tries to edit profile" do
      before do
        sign_in user_two
      end

      it "should redirect to the users edit page" do
        get :edit, id: user_two.id
        expect(response).to have_http_status(200)
      end

      it "should block other users from editing pages" do
        get :edit, id: user.id
        expect(response).not_to be_success
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "GET #show" do
    context "User viewing other user profiles" do
      before do
        sign_in :user_two
      end

      it "should block user and redirected to root path " do
        get :show, id: user.id
        expect(response).to redirect_to("/")
      end
    end
  end
end