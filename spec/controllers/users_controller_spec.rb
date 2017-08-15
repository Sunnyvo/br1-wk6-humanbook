require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:valid_attributes) { {name: "Adam", email:"adam@example.com", password: "asdf"} }
  let(:valid_user) {User.create(valid_attributes)}
  let(:valid_session) { {user_id: valid_user.id} }
  context "user is logged in"
    describe "GET #index" do
      it "returns a success response" do
        get :index, params: {}, session: valid_session
        expect(response).to be_success
        
      end
    end

  context "user is NOT logged in"
    describe "GET #index" do
      it "redirects to the home page" do
        get :index, params: {}, session: {}
        expect(response).to redirect_to(root_path)
      end
    end

  context "user is logged in"
  describe "GET #index" do
    it "loads all users" do
      get :index, params: {}, session: valid_session

      expect(assigns(:users)).to eq [valid_user]
    end
  end
end

