require('rspec')
require('dealership')

describe(Dealership) do
  describe('#name') do
    it('will return the name of the dealership') do
      test_dealership = Dealership.new("Bob's Car Lot")
      expect(test_dealership.name()).to(eq("Bob's Car Lot"))
    end
  end

end
