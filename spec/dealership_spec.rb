require('rspec')
require('dealership')
require('vehicle')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('will return the name of the dealership') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(test_dealership.name()).to(eq("Bob's Car Lot"))
    end
  end

  describe('#id') do
    it('will return the id of the dealership') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it('will return the car array') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save a new dealership') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(test_dealership.save()).to(eq([test_dealership]))
    end
  end

  describe('.clear') do
    it('clears the dealerships array') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(Dealership.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('will display all the dealerships') do
      test_dealership = Dealership.new("Bob's Car Lot")
      test_dealership.save()
      test_dealership2 = Dealership.new("Steve's Car Lot")
      test_dealership2.save()
      expect(Dealership.all()).to(eq([test_dealership, test_dealership2]))
    end
  end

  describe('.find') do
    it('will find a dealership based on its id number') do
      test_dealership = Dealership.new("Bob's Car Lot")
      test_dealership.save()
      test_dealership2 = Dealership.new("Steve's Car Lot")
      test_dealership2.save()
      expect(Dealership.find(1)).to(eq(test_dealership))
    end
  end

  describe('#add_vehicle') do
    it('adds a vehicle to the dealerships cars array') do
      test_dealership = Dealership.new("Bob's Car Lot")
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2015, 'white')
      test_dealership.add_vehicle(test_vehicle)
      expect(test_dealership.cars()).to(eq([test_vehicle]))
    end
  end

end
