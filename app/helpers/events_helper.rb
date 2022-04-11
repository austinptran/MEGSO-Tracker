<<<<<<< HEAD
# frozen_string_literal: true

module EventsHelper
  # Returns the user's name
  def get_current_user_first_name(uid)
    @user = User.find_by(UID: uid)
    @first_name = @user.first_name
  end
end
=======
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

  def registerPerson
    @id = cookies[:event_id]

    @event = Event.find(@id)
    @event_id = @event.event_attendee_list_id
    @member = current_user

    if !AttendeeList.exists?(attendee_list_id: @event_id, UID: @member.UID)
      current_user.update_attribute(:points, current_user.points + @event.event_point)
      @new_event = AttendeeList.create!(attendee_list_id: @event_id, UID: @member.UID)
    end
  end
end
>>>>>>> origin/joshua_revised
