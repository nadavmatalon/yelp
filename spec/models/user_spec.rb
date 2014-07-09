require 'rails_helper'

describe User do

  	before (:each) { @user = User.create(name: "John Apple", email: "ja@gmail.com",
  				   password: "foobar", password_confirmation: "foobar") }

	let(:found_user) { User.find_by(email: @user.email) }

  	subject { @user }

  	it "should have a name" do
 		expect(@user).to respond_to(:name)
 		expect(@user.name).to eq "John Apple"
 	end

   	it "should have an email" do
 		expect(@user).to respond_to(:email)
 		expect(@user.email).to eq "ja@gmail.com"
 	end

 	it "should have a password diagest" do
 		expect(@user).to respond_to(:password_digest)
   	end

	it "should have a password" do
 		expect(@user).to respond_to(:password)
   	end

   	it "should have a password confirmation" do
 		expect(@user).to respond_to(:password_confirmation)
   	end

  	it "should have a " do
 		expect(@user).to respond_to(:password_confirmation)
   	end


	describe "name" do

 		it "cannot be blank" do
 			@user.name = "a" * 51
  			expect(@user).not_to be_valid
  		end
  	
		it "cannot be more than 50 chars" do
 			@user.name = " "
 			expect(@user).not_to be_valid
  		end
	end

	describe "email" do

 		it "cannot be blank" do
 			@user.email = " "
 			expect(@user).not_to be_valid
  		end

    	it "should have valid format" do
      		addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                        foo@bar_baz.com foo@bar..com foo@bar+baz.com]
      		addresses.each do |invalid_address|
        		@user.email = invalid_address
        		expect(@user).not_to be_valid
      		end
    	end
 
    	it "must have valid format to create user" do
      		addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      		addresses.each do |valid_address|
        		@user.email = valid_address
        		expect(@user).to be_valid
      		end
    	end

 		it "must be unique" do
	      	user_with_same_email = @user.dup
      		user_with_same_email.save
      		expect(user_with_same_email).not_to be_valid
    	end

    	it "must is not case sensitive" do
	      	user_with_same_email = @user.dup
	      	user_with_same_email.email = @user.email.upcase
      		user_with_same_email.save
      		expect(user_with_same_email).not_to be_valid
    	end

    	it "will be changed to lowercase automatically before user is saved" do
  			@user.update_attribute(:email, "JA@gmail.com")
      		expect(@user.email).to eq "ja@gmail.com"
    	end
  	end

	describe "password and password confirmation" do
 
		before (:each) { @user = User.create(name: "Example User", email: "user@example.com",
            	         password: " ", password_confirmation: " ")}

		it "cannot be blank" do
  			expect(@user).not_to be_valid
  		end

  		it "must match" do
  			@user.password, @user.password_confirmation = "Apple", "Pear"
  			expect(@user).not_to be_valid
  		end

  		it "cannot be too short" do
  			@user.password, @user.password_confirmation = "a", "a"
  			expect(@user).not_to be_valid
  		end
	end
end







