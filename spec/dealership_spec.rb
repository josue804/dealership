require('rspec')
require('dealership')

describe(Vehicle) do
  describe('#make') do
    it('will return the make of a vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.make()).to(eq('Toyota'))
    end
  end

  describe('#model') do
    it('will return the model of a vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.model()).to(eq('Prius'))
    end
  end

  describe('#year') do
    it('will return the year of a vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.year()).to(eq(2015))
    end
  end

  # describe('#color') do
  #   it('will return the model of a vehicle') do
  #     test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
  #     expect(test_vehicle.model()).to(eq('Prius'))
  #   end
  # end
end
