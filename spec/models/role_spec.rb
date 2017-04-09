require 'rails_helper'

describe Role do
  it "is valid with a user and role type" do
    user = User.create(username: 'Bill', email: 'bill@bill.com', password: 'asdfasdf')
    user.add_role(:admin)
    expect(user.has_role?(:admin)).to eql true
  end

  it "should not approve incorrect roles" do
    user = User.create(username: 'Pete', email: 'pete@pete.com', password: 'asdfasdf')
    user.add_role(:moderator)
    expect(user.has_role?(:admin)).to eql false
  end

  it "should approve correct roles" do
    user = User.create(username: 'Mary', email: 'mary@mary.com', password: 'asdfasdf')
    user.add_role(:admin)
    expect(user.has_role?(:admin)).to eql true
  end
end
