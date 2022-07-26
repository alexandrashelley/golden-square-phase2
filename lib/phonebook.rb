class Phonebook 

  def initialize
    @numbers = [] 
  end

  def extract(entry)
    entry.scan(/[0-9]{11}/).each do |word| 
      @numbers << word
    end
  end
  
  # fail "number is the wrong length!" if !entry.include? 
  # (/[0-9]{9}/)

  def list
    return @numbers
  end
end

p phonebook = Phonebook.new 
p phonebook.extract("07123456789, 07123456788, 071234567890")