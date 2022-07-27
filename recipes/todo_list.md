# {{PROBLEM}} Reading Time Estimate

## 1. Describe the problem

_Put or write the user story here. Add any claryifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.
>
> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Todo 
  def initialize 
  # 
  end

  def add_todo(task)
    # task is a string that contains a task to be added to our todo list
    # doesn't return anything
  end

  def list
    # returns our list of (incomplete) tasks
  end

  def completed_todos(task)
    # task is a string that contains a task that has been completed 
    # doesn't return anything
    # error message if task can't be found in list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1.  calling list method outputs our list of tasks
todo = Todo.new
todo.list # => []

# 2. calling our add method with one task adds it to
# our list
todo = Todo.new
todo.add("Water the plants")
todo.list # => ["Water the plants"]

# 3. calling our add method with more than one todo adds them all to the list
todo = Todo.new
todo.add("Water the plants, Talk to the plants")
todo.list # => ["Water the plants, Talk to the plants"]

# 4. calling our add method again, adds todo to existing
# list
todo = Todo.new
todo.add("Water the plants")
todo.add("Talk to the plants")
todo.list # => ["Water the plants, Talk to the plants"]

# 5. calling our complete method, takes task off list
todo = Todo.new
todo.complete("Water the plants")
todo.list # => ["Talk to the plants"]

# 6. error message if complete method is called with a task
# that does not exist in our list
todo = Todo.new
expect{ todo.complete("Water the plants")}.to raise_error "That task doesn't exist!"

# 7. add method ignores duplicate tasks
todo = Todo.new
todo.add("Water the plants")
todo.add("Water the plants")
todo.list # => ["Water the plants"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


