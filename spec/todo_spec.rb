require 'todo'

RSpec.describe Todo do

  xit "calling list method outputs list of tasks" do 
    todo = Todo.new
    expect(todo.list).to eq []
  end

  xit "calling add_todo with one task adds it to our
  list" do
    todo = Todo.new
    todo.add("Water the plants") 
    expect(phonebook.list).to eq ["Water the plants"]
  end

  xit "calling add_todo with more than one task adds 
  them all to the list" do
    todo = Todo.new
    todo.add("Water the plants, Talk to the plants")
    expect(todo.list).to eq ["Water the plants, Talk to
    the plants"]
  end

  xit "calling add_todo again, adds task to existing 
  list" do
    todo = Todo.new
    todo.add("Water the plants")
    todo.add("Talk to the plants")
    expect(todo.list).to eq ["Water the plants, Talk to
    the plants"]
  end

  xit "calling complete_todos, takes task off list" do 
    todo = Todo.new
    todo.complete("Water the plants")
    expect(todo.list).to eq ["Talk to the plants"]
  end 

  xit "error message if complete_todos is called with
  a task that does not exist in our list" do
  todo = Todo.new
  todo.complete("Prune the plants")
  expect { todo.list }.to raise_error "That task doesnt 
  exist!"
  end

  xit "add_todos ignores duplicate tasks" do
    todo = Todo.new
    todo.add("Water the plants")
    todo.add("Water the plants")
    expect(todo.list).to eq ["Water the plants"]
  end
end