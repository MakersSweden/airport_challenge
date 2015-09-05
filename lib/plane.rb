class Plane
  attr_accessor :flying
  
  def initialize
    self.flying = true
  end
  
  def take_off
    self.flying ? false : self.flying = true
  end
  
  def land
    self.flying ? self.flying = false : false
  end
  
  def is_flying?
    self.flying
  end
  
  def is_landed?
    !self.flying
  end
end
