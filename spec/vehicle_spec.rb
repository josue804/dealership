require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

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

  describe('#color') do
    it('will return the color of a vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.color()).to(eq('white'))
    end
  end

  describe('#paint_car') do
    it('will change the color of a vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.paint_car('brown')).to(eq('brown'))
    end
  end

  describe('#save') do
    it('will save a vehicle onto an array of vehicles') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      expect(test_vehicle.save()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('will clear the contents of the vehicle array') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      test_vehicle.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('will displays all vehicles in the array') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      test_vehicle2 = Vehicle.new('Chrysler', 'Pacifica', 2006, 'white')
      test_vehicle.save()
      test_vehicle2.save()
      expect(Vehicle.all()).to(eq([test_vehicle, test_vehicle2]))
    end
  end

  describe('#id') do
    it('will return the id of the vehicle') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('will find a vehicle based on fed in id') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      test_vehicle2 = Vehicle.new('Chrysler', 'Pacifica', 2006, 'white')
      test_vehicle.save()
      test_vehicle2.save()
      expect(Vehicle.find(2)).to(eq(test_vehicle2))
    end
  end
end
