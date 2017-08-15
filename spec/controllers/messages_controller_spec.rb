require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let(:valid_attributes) { {name: "Adam", email:"adam@example.com", password: "asdf"} }
  let(:valid_user) {User.create(valid_attributes)}
  let(:valid_session) { {user_id: valid_user.id} }

  describe "GET #new" do
    it "returns a success response" do
       @message = Message.new
       get :new, params: {}, session: valid_session
       expect(response).to be_success
    end
  end

  # describe "POST #create" do
  #   it "user can send message" do

end
