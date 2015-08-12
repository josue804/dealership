require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add, remove, and display dealership cars', {:type => :feature}) do
  it('will display index page') do
    visit('/')
    expect(page).to have_content("See Dealership List!")
  end
end
