require('rspec')
require('dealership')

describe(Dealership) do
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

end