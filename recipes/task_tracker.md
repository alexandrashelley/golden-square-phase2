# {{PROBLEM}} Task Tracker

## 1. Describe the problem

_Put or write the user story here. Add any claryifying notes you might have._

> As a user
> So that I can keep track of my tasks 
> I want to check if a text includes the string #TODO.


## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
todo = tracking_tasks(text)

# * the argument text is a string e.g. "#TODO wash the dishes"
# * todo is an output string that starts with #TODO
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# tracking_tasks("")
# => "Error. Please input a string"

# tracking_tasks("#TODO wash the dishes")
# => "wash the dishes"

# tracking_tasks("#todo wash the dishes")
# => "Couldn't find any tasks"

# tracking_tasks("TODO wash the dishes")
# => "Couldn't find any tasks"

# repeat for other variations of #TODO

# tracking_tasks("task #TODO wash the dishes")
# => "#TODO wash the dishes"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


