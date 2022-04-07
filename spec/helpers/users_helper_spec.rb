require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
	describe "#check_first_name" do
		it "returns correct first name" do
			assign(:first_name, "Henry")
			helper.check_first_name.should eql("Henry")
		end
	end

	describe "#check_user_email" do
		it "returns correct email" do
			assign(:email, "brightkid12@gmail.com")
			helper.check_user_email.should eql("brightkid12@gmail.com")
		end
	end
end
