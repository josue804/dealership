class Vehicle
  @@vehicles = []

  define_method(:initialize) do |make, model, year, color|
    @make = make
    @model = model
    @year = year
    @color = color
    @id = @@vehicles.length().+1
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

  define_method(:id) do
    @id
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_singleton_method(:find) do |id|
    @@vehicles[id-1]
  end


end
