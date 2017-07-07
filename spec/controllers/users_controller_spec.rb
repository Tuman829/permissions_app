require "rails_helper"

RSpec.describe UsersController, :type => :controller do
  render_views
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all @users" do
      user1, user2 = FactoryGirl.create(:user), FactoryGirl.create(:user)
      get :index
      expect(assigns(:users)).to eq([user1, user2])
    end
  end
  describe "#update" do
    it "updates the password", js: true do     
    user1 = FactoryGirl.create(:user)      
      patch :update, params:{id: user1.id, user: {password: "xxx"}}, :format => :js
      expect(assigns(:user).authenticate("xxx")).to eq(user1)
    end
  end
end