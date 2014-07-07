require 'spec_helper'

describe "Static pages >" do

    subject { page }

	describe "Home page: " do

        before (:each) { visit root_path }

		it "should have the content \'Home\'" do
			should have_content("Home")
		end

        it "should have the selector h1 correct text" do
            should have_selector('h1', text: 'Home')
        end

        it "should have the base and page title" do
            should have_title("Yelp | Home")
        end
    end
	
	describe "About page" do

        before (:each) { visit about_path }

    	it "should have the content \'About Us\'" do
    		should have_content("About Us")
    	end

        it "should have the selector h1 correct text" do
            should have_selector('h1', text: 'About Us')
        end

        it "should have the base and page title" do
            should have_title("Yelp | About Us")
        end
    end

   describe "Contact page" do

        before (:each) { visit contact_path }

        it "should have the content \'Contact Us\'" do
            should have_content("Contact Us")
        end

        it "should have the selector h1 correct text" do
            should have_selector('h1', text: 'Contact Us')
        end

       it "should have the base and page title" do
            should have_title("Yelp | Contact Us")
        end
    end

    describe "Help page" do

        before (:each) { visit help_path }

        it "should have the content \'Help\'" do
            should have_content("Help")
        end

        it "should have the selector h1 correct text" do
            should have_selector('h1', text: 'Help')
        end

       it "should have the base and page title" do
            should have_title("Yelp | Help")
        end
    end


    describe "Static pages" do

        before (:each) { visit root_path }

        it "should have the right link to Home" do
            click_link "Home"
            should have_title('Yelp | Home')
        end

        it "should have the right link to About Us" do
            click_link "About"
            should have_title('Yelp | About Us')
        end

        it "should have the right link to Contact Us" do
            click_link "Contact"
            should have_title('Yelp | Contact Us')
        end

        it "should have the right link to Help" do
            click_link "Help"
            should have_title('Yelp | Help')
        end

        it "should have the right link to Sign up Now!" do
            click_link "Sign up now!"
            should have_title('Yelp | Sign Up')
        end

        xit "should have the right link to Sample App" do
            click_link "Sample App"
            should have_title('Yelp | Contact Us')
        end
    end
end

