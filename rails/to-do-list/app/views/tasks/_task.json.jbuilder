json.extract! task, :id, :task_list_id, :complete, :description, :due_date, :created_at, :updated_at
json.url task_url(task, format: :json)
