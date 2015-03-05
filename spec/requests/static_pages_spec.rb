require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'ToDoDoo'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('ToDoDoo')
    end

    it "should have the right title" do
  	  visit '/static_pages/home'
      expect(page).to have_title("ToDoDoo | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
  	  visit '/static_pages/help'
      expect(page).to have_title("ToDoDoo | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do
  	  visit '/static_pages/about'
      expect(page).to have_title("ToDoDoo | About")
    end
  end

end
