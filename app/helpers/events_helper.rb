# frozen_string_literal: true

module EventsHelper
  # Returns the user's name
  def get_current_user_first_name(uid)
    @user = User.find_by(UID: uid)
    @first_name = @user.first_name
  end

  def check_event_date
    @event_date || nil
  end

  def check_event_name
    @event_name || nil
  end
end
