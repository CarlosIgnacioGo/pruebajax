json.extract! complaint, :id, :content, :user_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)