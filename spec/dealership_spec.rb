require('rspec')
require('dealership')

describe(Vehicle) do
  describe('#make') do
    it('will create a new vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.make()).to(eq('Toyota'))
    end
  end
end
