require 'spec_helper'

describe "Static pages >" do

	describe "Home page: " do

		it "should have the content \'Home\'" do
			visit "/static_pages/home"
			expect(page).to have_content("Home")
		end

        it "should have the title \'Home\'" do
            visit "/static_pages/home"
            expect(page).to have_title("Yelp | Home")
        end

	end
	
	describe "Help page" do

    	it "should have the content \'Help\'" do
    		visit "/static_pages/help"
    		expect(page).to have_content("Help")
    	end

            it "should have the title \'Yelp | Help\'" do
            visit "/static_pages/help"
            expect(page).to have_title("Yelp | Help")
        end

    end

	describe "About page" do

    	it "should have the content \'About Us\'" do
    		visit "/static_pages/about"
    		expect(page).to have_content("About Us")
    	end

            it "should have the title \'Yelp | About Us\'" do
            visit "/static_pages/about"
            expect(page).to have_title("Yelp | About Us")
        end
    end
end

