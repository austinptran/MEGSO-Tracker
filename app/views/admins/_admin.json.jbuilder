json.extract! admin, :id, :admin_name, :admin_pass, :admin_position, :admin_key, :created_at, :updated_at
json.url admin_url(admin, format: :json)
