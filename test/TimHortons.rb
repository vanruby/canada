class TimHortons

  def initialize
    @doughnuts = Array.new
  end

  def bake(type)
    @doughnuts << type
  end

  def doughnutAvailable?(search)
    @doughnuts.include?(search)
  end

  # Define Canadianisms 
  def eh_doughnutAvailable(type)
    bake(type)
  end

end
