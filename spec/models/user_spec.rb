require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires a first name' do
  	user = User.new(first_name: '')
  	user.valid?
  	expect(user.errors[:first_name].any?).to eq(true)
  end

  it 'requires a last name' do
  	user = User.new(last_name: '')
  	user.valid?
  	expect(user.errors[:last_name].any?).to eq(true)
  end

  it 'requres a password' do
  	user = User.new(password: '')
  	user.valid?
  	expect(user.errors[:password].any?).to eq(true)
  end

  # it 'accepts properly formatted email addresses' do
  # 	emails = ['tom@tom.com', 'tom.tom@tom.com']
  # 	emails.each do |email|
  # 		user = User.new(email: email)
  # 		user.valid?
  # 		expect(user.errors[:email].any?).to eq(true)
  # 	end
  # end

  it 'rejects improperly formatted email addresses' do
  	emails = ['tom@tom', 'tom.com']
  	emails.each do |email|
  		user = User.new(email: email)
  		user.valid?
  		expect(user.errors[:email].any?).to eq(true)
  	end
  end

end







