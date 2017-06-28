require('capybara/rspec')
  require('./app')
#Telling Capybara its going to test our app
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  #the second argumenet is a hash that's required for Capybara and RSpec to work together ({:type => :feature})
  describe('the title case path', {:type => :feature}) do
    it('processes the user entry and returns it title cased') do
      visit('/')
      fill_in('title', :with => 'green eggs and ham')
      click_button('Send')
      expect(page).to have_content('Green Eggs and Ham')
    end
  end