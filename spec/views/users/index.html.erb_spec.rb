require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
      :name => "Example User",
      :email => "example@email.com",
      :password => "password",
      :password_confirmation => "password"
      ),
      User.create!(
      :name => "Example User 2",
      :email => "example_a@email.com", 
      :password => "password",
      :password_confirmation => "password"     
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Example User".to_s, :count => 1
    assert_select "tr>td", :text => "example@email.com".to_s, :count => 1
    assert_select "tr>td", :text => "Example User 2".to_s, :count => 1
    assert_select "tr>td", :text => "example_a@email.com".to_s, :count => 1
  end
end
