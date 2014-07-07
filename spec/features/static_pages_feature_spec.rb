require 'spec_helper'

describe "Static pages >" do

    subject { page }

	describe "Home page: " do

        before (:each) { visit root_path }

		it "should have the content \'Home\'" do
			should have_content("Home")
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

        it "should have the base and page title" do
            should have_title("Yelp | About Us")
        end
    end

   describe "Contact page" do

        before (:each) { visit contact_path }

        it "should have the content \'Contact Us\'" do
            should have_content("Contact Us")
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

       it "should have the base and page title" do
            should have_title("Yelp | Help")
        end
    end
end

