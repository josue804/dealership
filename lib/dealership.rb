class Vehicle
  @@vehicles = []

  define_method(:initialize) do |make, model, year, color|
    @make = make
    @model = model
    @year = year
    @color = color
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:color) do
    @color
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_singleton_method(:all) do
    @@vehicles
  end
end
