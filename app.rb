require('sinatra')
require('sinatra/reloader')
require('./lib/vehicle')
require('./lib/dealership')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/dealerships/new') do
  erb(:dealerships_form)
end

post('/dealerships') do
  name = params.fetch('name')
  Dealership.new(name).save()
  @dealerships = Dealership.all()
  erb(:success)
end
