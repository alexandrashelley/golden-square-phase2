class Todo 
  def initialize
    @list = []
  end

  def add_todo(task)
    @list << task unless @list.include? task
  end
  
  def list
    return @list
  end

  def complete_todos(task)
    if @list.include? task
      list.delete task
    elsif
      !@list.include? task
    fail "That task doesn't exist!"
    end
  end
end