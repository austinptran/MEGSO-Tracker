# frozen_string_literal: true

module RewardsHelper
  # Returns the user's name
  def get_current_user_points(uid)
    @user = User.find_by(UID: uid)
    @points = @user.points
  end

  def check_reward_name
    @reward_name || nil
  end

  def check_reward_points
    @reward_points || nil
  end
end
