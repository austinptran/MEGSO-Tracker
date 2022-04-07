# frozen_string_literal: true

module AlumnisHelper
  def check_linkedin
    @LinkedIn || nil
  end

  def check_grad_year
    @alumni_grad_year || nil
  end
end
