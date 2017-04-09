require 'rails_helper'

describe User do
  it "is valid with a user name, email and password" do
    user = User.new
    user.username = "Bob"
    user.email = "bob@bobby.com"
    user.password = "asdfasdf"
    expect(user).to be_valid
  end

  it "is invalid without email" do
    user = User.new
    user.email = nil
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
end
