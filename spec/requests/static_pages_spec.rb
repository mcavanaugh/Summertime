require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    describe "Contact page" do
      it "Should have the content 'Contact'" do
        visit '/contact'
        page.should have_content('Contact')
      end
    end
    describe "About page" do
      it "Should have the content 'About'" do
        visit '/about'
        page.should have_content('About')
      end
    end
    describe "Help page" do
      it "Should have the content 'Help'" do
        visit '/help'
        page.should have_content('Help')
      end
    end
  end
end
