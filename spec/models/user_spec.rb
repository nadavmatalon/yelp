require 'rails_helper'

describe User do

  before { @user = User.new(name: "John Apple", email: "ja@gmail.com") }

  subject { @user }

  	it "should have a name" do
 		expect(@user).to respond_to(:name)
 		expect(@user.name).to eq "John Apple"
 	end

   	it "should have an email" do
 		expect(@user).to respond_to(:email)
 		expect(@user.email).to eq "ja@gmail.com"
 	end
end
