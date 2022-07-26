class Phonebook 
  def initialize
    @list_array = [] 
  end

  def extract(entry)
  # extracts correctly a phone number from a diary entry 
# takes entry, looks for a number   
# fail "number is the wrong length!" if !entry.include? (/[0-9]{9}/)
  delete_commas = entry.delete(",").split(" ") do |word| word.split(" ")
  end
  p delete_commas
  numbers = delete_commas.each do |word| (word.scan(/[0-9]{9}/))[0]
  end
  p numbers
  @list_array += numbers
  # (entry.scan(/[0-9]{9}/))[0]
  p @list_array
  end

  def list
    # outputs an array, a list of all the numbers 
    @list_array
  end
  
end

phonebook = Phonebook.new 
p phonebook.extract("073456789, 073456781")
