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
    phonebook.extract("07123456789") 
    expect(phonebook.list).to eq ["07123456789"]
  end

  #3. calling our extraction method with more than one 
  # number, extracts those numbers (as a list)
  it "calling our extraction method with more than one
        number, extracts those numbers (as a list)" do
    phonebook = Phonebook.new
    phonebook.extract("07123456789, 07123456788")
    expect(phonebook.list).to eq ["07123456789", "07123456788"]
  end

  #4. calling our extraction method with words included, 
  # extracts just the phone number
  it "calling our extraction method with words included, 
         extracts just the phone number" do
    phonebook = Phonebook.new
    phonebook.extract("my friend's number is 07123456789") 
    expect(phonebook.list).to eq ["07123456789"]
  end

  # 5. calling our extraction method again, extracts new
  # number in a list with previously extracted numbers
  it "calling our extraction method again, extracts new
      number in a list with previously extracted numbers" do 
    phonebook = Phonebook.new
    phonebook.extract("07123456789")
    phonebook.extract("07123456788")
    expect(phonebook.list).to eq ["07123456789", "07123456788"]
  end 

  # 6. extract ignores duplicates from 2 extractions 
  it "extract ignores duplicates from 2 extractions " do
    phonebook = Phonebook.new
    phonebook.extract("07123456789")
    phonebook.extract("new numbers 07123456789 07123456788")
    expect(phonebook.list).to eq ["07123456789", "07123456788"]
  end

  # 7. extract ignores duplicates from a single diary entry
  xit "extract method ignores duplicates from a single diary
       entry" do
    phonebook = Phonebook.new
    phonebook.extract("07123456789, 07123456789")
    expect(phonebook.list).to eq ["07123456789"]
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
    expect{ phonebook.extract("0712345678")}.to raise_error "Number is the wrong length!" 
  end
end