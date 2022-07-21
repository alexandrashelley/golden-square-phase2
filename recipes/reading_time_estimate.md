# {{PROBLEM}} Reading Time Estimate

## 1. Describe the problem

_Put or write the user story here. Add any claryifying notes you might have._

> As a user
> So that I can manage my time
> I want to saee an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_time = calculate_reading_time(text)

# * the argument text is a string e.g. "imagine that this string contains 200 words"
# * reading time is an integer => 1
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# calculate_reading_time("")
# => 0

# calculate_reading_time("199 words")
# => 1

# calculate_reading_time("200 words")
# => 1

calculate_reading_time("imagine that this string contains 1000 words")
# => 5
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


