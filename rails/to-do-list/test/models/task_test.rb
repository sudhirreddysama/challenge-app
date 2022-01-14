require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "valid task" do
    task_list = TaskList.new(name: 'to do list')
    task = Task.new(task_list: task_list)
    assert task.valid?
  end
end
