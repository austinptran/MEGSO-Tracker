module UsersHelper
      # Returns true if the user is officer
  def is_officer?(user)
    user.is_officer?
  end

  def is_admin?(user)
    user.is_admin?
  end
    # Returns the user's name
  def get_current_user_first_name(uid)
    @user = User.find_by(UID: uid)
    @first_name = @user.first_name
  end
end
