require 'spec_helper'

describe "User Pages >" do

    subject { page }

	describe "Signup page: " do

        before (:each) { visit signup_path }

		it "should have the content \'Sign Up\'" do
			should have_content("Sign Up")
		end

        it "should have the base and page title" do
            should have_title("Yelp | Sign Up")
        end
    end
end
