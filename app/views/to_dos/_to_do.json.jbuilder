json.extract! to_do, :id, :due_date, :completed_at, :finished, :user_task_id, :created_at, :updated_at
json.url to_do_url(to_do, format: :json)
