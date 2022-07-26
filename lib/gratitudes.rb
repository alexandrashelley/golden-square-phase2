class Gratitudes
  def initialize 
    # tells our class we need to set up a list of gratitudes 
    # (an empty one to begin with)
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes << gratitude
  end

  def format
    prefix = "Be grateful for: "
    formatted_gratitudes = @gratitudes.join(", ")
    return prefix + formatted_gratitudes
  end
end