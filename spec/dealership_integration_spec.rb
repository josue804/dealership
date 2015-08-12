require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add, remove, and display dealership cars', {:type => :feature}) do
  it('will display index page') do
    visit('/')
    expect(page).to have_content("See Dealership List!")
  end

  it('will allow user to submit a delership name and get a success page') do
    visit('/')
    click_link('Add New Dealership!')
    fill_in('name', :with => "Vin's Vehicles")
    click_button('Add!')
    expect(page).to have_content('Your form has been submitted')
  end

  it('will display list of added dealerships') do
    visit('/dealerships/new')
    fill_in('name', :with => "Vin's Vehicles")
    click_button('Add!')
    click_link('Click here to view dealerships!')
    expect(page).to have_content("Vin's Vehicles")
  end
end
