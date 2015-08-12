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
end
