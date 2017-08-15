require 'rails_helper'

RSpec.describe User, type: :model do

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

  describe " add a new friend" do
    before do
      user = User.create name: "Sunny", email: "Sunny@gmail.com", password: "lightinghouse"
      @a = user.friends.count
      john = User.create name: "John", email: "John@gmail.com", password: "123"
      user.add_friend(john)
      @b = user.friends.count
    end
    it "the user will have a new friend" do
      expect(@b - @a).to eq(1)
    end
  end
end

