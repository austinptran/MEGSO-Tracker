require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the OfficersHelper. For example:
#
# describe OfficersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe OfficersHelper, type: :helper do
  describe "#check_officer_position" do
		it "returns correct officer position" do
			assign(:position, "President")
			helper.check_officer_position.should eql("President")
		end
	end
end
