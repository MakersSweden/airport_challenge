class Airport
  attr_accessor :planes
  
  def initialize
    @planes = []
    3.times do
      self.planes << Plane.new
    end
  end
  
  def current_weather?
    rand(1..10) <= 7 ? :sunny : :stormy
  end
end
