require 'todo'

RSpec.describe Todo do

  it "calling list method outputs list of tasks" do 
    todo = Todo.new
    expect(todo.list).to eq []
  end

  it "calling add_todo with one task adds it to our
  list" do
    todo = Todo.new
    todo.add_todo("Water the plants") 
    expect(todo.list).to eq ["Water the plants"]
  end

  it "calling add_todo with more than one task adds 
  them all to the list" do
    todo = Todo.new
    todo.add_todo("Water the plants, Talk to the plants")
    expect(todo.list).to eq ["Water the plants, Talk to the plants"]
  end

  it "calling add_todo again, adds task to existing 
  list" do
    todo = Todo.new
    todo.add_todo("Water the plants")
    todo.add_todo("Talk to the plants")
    expect(todo.list).to eq ["Water the plants", "Talk to the plants"]
  end

  it "calling complete_todos, takes task off list" do 
    todo = Todo.new
    todo.add_todo("Water the plants")
    todo.add_todo("Talk to the plants")
    todo.complete_todos("Talk to the plants")
    expect(todo.list).to eq ["Water the plants"]
  end 
  
  it "error message if complete_todos is called with
  a task that does not exist in our list" do
    todo = Todo.new
    todo.add_todo("Talk to the plants")
    expect { todo.complete_todos("Prune the plants") }.to raise_error "That task doesn't exist!"
  end

  it "error message if no task is entered" do
    todo = Todo.new
    expect { todo.add_todo("") }.to raise_error "You did not enter a task"
  end

  it "add_todos ignores duplicate tasks" do
    todo = Todo.new
    todo.add_todo("Water the plants")
    todo.add_todo("Water the plants")
    expect(todo.list).to eq ["Water the plants"]
  end
end