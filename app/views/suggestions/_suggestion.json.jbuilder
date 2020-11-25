json.extract! suggestion, :id, :title, :suggestion, :active_status, :del_status, :created_at, :updated_at
json.url suggestion_url(suggestion, format: :json)
