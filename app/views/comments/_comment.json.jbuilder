json.extract! comment, :id, :suggestion_id, :comment, :active_status, :del_status, :created_at, :updated_at
json.url comment_url(comment, format: :json)
