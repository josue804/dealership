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

get('/dealerships') do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

post('/dealerships') do
  name = params.fetch('name')
  Dealership.new(name).save()
  @dealerships = Dealership.all()
  erb(:success)
end

get('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:vehicles)
end

get('/dealerships/:id/vehicles/new') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:vehicles_form)
end

post('/dealerships/:id/vehicles') do
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  color = params.fetch('color')
  @vehicle = Vehicle.new(make, model, year, color)
  @vehicle.save()
  @dealership = Dealership.find(params.fetch('dealership_id').to_i())
  @dealership.add_vehicle(@vehicle)
  erb(:vehicles)
end

get('/vehicles/:id/:dealership_id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i())
  @dealership = params.fetch('dealership_id').to_i()
  erb(:vehicle_info)
end
