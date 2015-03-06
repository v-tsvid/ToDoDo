require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "ToDoDoo"}

  describe "Home page" do
    it "should have the content 'ToDoDoo'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('ToDoDooApp')
    end

    it "should have the right title" do
  	  visit '/static_pages/home'
      expect(page).to have_title("ToDoDoo")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
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
      expect(page).to have_title("#{base_title} | Help")
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
      expect(page).to have_title("#{base_title} | About")
    end
  end


  describe "Contact page" do
    it "should have the content 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
  	  visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
