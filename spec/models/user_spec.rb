require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "valid user" do
    before do
      @user = User.create name: "Sunny", email: "Sunny@gmail.com", password: "lightinghouse"
    end

    it "create successfully" do
      expect(@user).to be_valid
    end

    it "has  a valid image_url_or_default" do
      expect(@user.image_url_or_default).to eq "http://lorempixel.com/128/128/sports/Fake-User/"
    end
  end
end
