require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "valid task" do
    task_list = TaskList.new(name: 'to do list')
    task = Task.new(task_list: task_list, description: 'this is a task')
    assert task.valid?
  end

  test "validates task description presence" do
    task_list = TaskList.new(name: 'to do list')
    task = Task.new(task_list: task_list, description: '')
    assert task.invalid?
  end
end
