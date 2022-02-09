json.extract! event, :id, :event_id, :point_assess, :event_location, :start_time, :end_time, :event_title, :attendee_list_id, :created_at, :updated_at
json.url event_url(event, format: :json)
