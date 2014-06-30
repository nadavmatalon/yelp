require 'rails_helper'


describe "restaurant listing page" do

	context "list of restaurants" do

		it "is initially empty" do
			visit '/restaurants'
			expect(page).to have_content("No restaurants yet");

		end

	end
	

  context 'are restaurants' do
    before do
      Restaurant.create(name: 'Ledbury')
    end

    it 'should show the restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'Ledbury'
    end
  end


  describe 'restaurants creation form' do
  	it 'should be able to create a restaurant' do
  		visit '/restaurants/new'
  		fill_in 'Name', with: 'Burger King'
  		click_button 'Create Restaurant'
  		expect(current_path).to eq '/restaurants'
  		expect(page).to have_content 'Burger King'
  	end
  end

  describe 'restaurant edit form' do
    before do
      Restaurant.create(name: 'KFC')
    end

  	it 'should be able to edit a restaurant' do
  		visit '/restaurants'
  		click_link 'Edit KFC'
  		fill_in 'Name', with: 'Kentucky Fried Chicken'
  		click_button 'Update Restaurant'
  		expect(current_path).to eq '/restaurants'
  		expect(page).to have_content 'Kentucky Fried Chicken'

  	end

  end

end
