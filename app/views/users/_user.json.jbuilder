json.extract! user, :id, :UID, :user_name, :user_age, :user_address, :user_email, :user_phone, :user_gender, :created_at, :updated_at
json.url user_url(user, format: :json)
