require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the OccupationsHelper. For example:
#
# describe OccupationsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe OccupationsHelper, type: :helper do
  describe "#check_occupation_role" do
		it "returns correct occupation role" do
			assign(:occupation_role, "Software Developer")
			helper.check_occupation_role.should eql("Software Developer")
		end
	end
	describe "#check_occupation_company" do
		it "returns correct occupation company" do
			assign(:occupation_company, "Boeing")
			helper.check_occupation_company.should eql("Boeing")
		end
	end
end
