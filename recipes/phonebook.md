# {{PROBLEM}} Reading Time Estimate

## 1. Describe the problem

_Put or write the user story here. Add any claryifying notes you might have._

> As a user
> So that I can keep track of my friend's numbers
> I want to see a list of their numbers extracted from my diary entry.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Phonebook 
  def initialize # 
  end

  def extract(string)
  # extracts correctly a phone number from a diary entry 
  end

  def list
    # outputs an array, a list of all the numbers 
  end
  
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1.  calling list method outputs array 
# phonebook = Phonebook.new
# phonebook.list => []

# 2. calling our extraction method with just one phone number extracts that phone number
# phonebook = Phonebook.new
# phonebook.extract("073456789") 
# phonebook.list => ["073456789"]

# 3. calling our extraction method with more than one number, extracts those numbers (as a list)
# phonebook = Phonebook.new
# phonebook.extract("073456789", "073456781")
# phonebook.list => ["073456789", "073456781"]

# 4. calling our extraction method with words included, extracts just the phone number
# phonebook = Phonebook.new
# phonebook.extract("my friend's number is 073456789") 
# phonebook.list => ["073456789"]

# 5. calling our extraction method again, extracts new number in a list with previously extracted numbers
# phonebook = Phonebook.new
# phonebook.extract("073456789")
# phonebook.extract("073456781")
# phonebook.list => ["073456789", "073456781"]

# 6. extract ignores duplicates from 2 extractions 
# phonebook = Phonebook.new
# phonebook.extract("073456789")
# phonebook.extract("new numbers 073456789 073456781")
# phonebook.list => ["073456789", "073456781"]

# 7. extract ignores duplicates from a single diary entry 
# phonebook = Phonebook.new
# phonebook.extract("073456789, 073456789, 073456781")
# phonebook.list => ["073456789", "073456781"]

# 8. extract throws error from messages that don't contain a phone number 
# phonebook = Phonebook.new
# expect{ phonebook.extract("my friend are sooo cool")}.to raise_error "Message doesn't contain a number!" 
# don't forget empty string etc.

# 9. throws error if the number is the wrong length 
# phonebook = Phonebook.new
# expect{ phonebook.extract("07345678")}.to raise_error "A number is the wrong length!" 

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


