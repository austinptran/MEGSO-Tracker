module RewardsHelper
        # Returns the user's name
      def get_current_user_points(uid)
        @user = User.find_by(UID: uid)
        @points = @user.points
      end
    

end
