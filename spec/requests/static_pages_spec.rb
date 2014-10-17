require 'spec_helper'

describe "StaticPages" do

  let(:title_prefix) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home page" do

    it 'should have the content "Sample App"' do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it 'should have the right title' do
      visit root_path
      expect(page).to have_title "#{title_prefix}"
    end

    it 'should have the right title' do
      visit root_path
      expect(page).not_to have_title "| Home"
    end

  end

  describe "help page" do

    it 'should have the content "Help"' do
      visit help_path
      expect(page).to have_content('Help')
    end

    it 'should have the right title' do
      visit help_path
      expect(page).to have_title "#{title_prefix} | Help"
    end

  end

  describe "about page" do

    it 'should have the content "About"' do
      visit about_path
      expect(page).to have_content('About')
    end

    it 'should have the right title' do
      visit about_path
      expect(page).to have_title "#{title_prefix} | About"
    end

  end

  describe "contact page" do

    it 'should have the content "Contact"' do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it 'should have the right title' do
      visit contact_path
      expect(page).to have_title "#{title_prefix} | Contact"
    end

  end



end
