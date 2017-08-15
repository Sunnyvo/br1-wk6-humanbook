require 'rails_helper'

RSpec.describe User, type: :model do
<<<<<<< HEAD
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

  



=======
  describe "valid user" do
    before do
      @user = User.create name: "Adam", email: "adam@example.com", password: "asdfasdf"
    end

    it "creates successfully" do
      # expect(@user.valid?).to eq true
      expect(@user).to be_valid
    end

    it "has a valid image_url_or_default" do
      expect(@user.image_url_or_default).to eq "http://lorempixel.com/128/128/sports/Fake-User/"
    end
  end
>>>>>>> 6e79840f35a679506ea7f6c88504ecf6a00b3fe1
end
