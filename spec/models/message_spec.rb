require 'rails_helper'

RSpec.describe Message, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "send a new message" do
    before do
      a =  User.create name: "Sunny", email: "Sunny@gmail.com", password: "lightinghouse"
      b =  User.create name: "a", email: "a@gmail.com", password: "abc"
      @message = a.sent_messages.build recipient_id: b.id , body: "hello"
    end

    it "create successful message" do
      expect(@message).to be_valid
    end
  end
end
