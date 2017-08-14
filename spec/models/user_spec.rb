require "spec_helper"

RSpec.describe User do

  # Validations
  
  it "rejects a user without a first name" do
    user = User.new(last_name: "Butts", email: "email@email", password:"123")
    expect(user.valid?).to be false
  end

  it "accepts a user with a first name, email, and password" do
    user = User.new(first_name: "Butts", email: "email@email", password:"123")
    expect(user.valid?).to be true
  end

  it "rejects a user with a duplicate email" do
    user1 = User.new(first_name: "Butts", email: "email@email", password:"123")
    user1.save
    user2 = User.new(first_name: "Whats", email: "email@email", password:"123")
    expect(user2.valid?).to be false
  end

  it "rejects a user without an email" do
    user = User.new(first_name: "Butts", password:"123")
    expect(user.valid?).to be false
  end

  it "rejects a user without a password" do
    user = User.new(first_name: "Butts", email:"email@email")
    expect(user.valid?).to be false
  end
end
