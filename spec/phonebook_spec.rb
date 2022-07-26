require 'phonebook'

RSpec.describe Phonebook do

  #1.  calling list method outputs array 
  it "calling list method outputs array" do 
    phonebook = Phonebook.new
    expect(phonebook.list).to eq []
  end

  #2. calling our extraction method with just one phone 
  # number extracts that phone number
  it "calling our extraction method with just one 
        phone number extracts that phone number" do
    phonebook = Phonebook.new
    phonebook.extract("073456789") 
    expect(phonebook.list).to eq ["073456789"]
  end

  #3. calling our extraction method with more than one number, extracts those numbers (as a list)
  it "calling our extraction method with more than one number, 
        extracts those numbers (as a list)" do
    phonebook = Phonebook.new
    phonebook.extract("073456789, 073456781")
    expect(phonebook.list).to eq ["073456789", "073456781"]
  end

  #4. calling our extraction method with words included, extracts just the phone number
  xit "calling our extraction method with words included, extracts just the phone number" do
    phonebook = Phonebook.new
    phonebook.extract("my friend's number is 073456789") 
    expect(phonebook.list).to eq ["073456789"]
  end

  # 5. calling our extraction method again, extracts new number 
  # in a list with previously extracted numbers
  xit "calling our extraction method again, extracts new number 
      in a list with previously extracted numbers" do 
    phonebook = Phonebook.new
    phonebook.extract("073456789")
    phonebook.extract("073456781")
    expect(phonebook.list).to eq ["073456789", "073456781"]
  end 

  # 6. extract ignores duplicates from 2 extractions 
  xit "extract ignores duplicates from 2 extractions " do
    phonebook = Phonebook.new
    phonebook.extract("073456789")
    phonebook.extract("new numbers 073456789 073456781")
    phonebook.list .to eq  ["073456789", "073456781"]
  end

  # 7. extract ignores duplicates from a single diary entry
  xit "extract method ignores duplicates from a single diary entry" do
    phonebook = Phonebook.new
    phonebook.extract("073456789, 073456789, 073456781")
    expect(phonebook.list).to eq ["073456789", "073456781"]
  end

  #8. extract throws error from messages that don't
  # contain a phone number 
  xit "string doesn't contain a number" do
    phonebook = Phonebook.new
    expect{ phonebook.extract("my friends are sooo cool")}.to raise_error "Message doesn't contain a number!" 
  end
  # don't forget empty string etc.

  # 9. throws error if the number is the wrong length
  xit "number is the wrong length" do
    phonebook = Phonebook.new
    expect{ phonebook.extract("07345678")}.to raise_error "number is the wrong length!" 
  end
end