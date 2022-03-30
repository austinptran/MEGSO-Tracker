require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AlumnisHelper. For example:
#
# describe AlumnisHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AlumnisHelper, type: :helper do
  describe "#check_linkedin" do
		it "returns the linkedin url" do
			assign(:LinkedIn, "https://www.linkedin.com/in/example")
			helper.check_linkedin.should eql("https://www.linkedin.com/in/example")
		end
	end
	describe "#check_grad_year" do
		it "returns the grad year" do
			assign(:alumni_grad_year, "2022")
			helper.check_grad_year.should eql("2022")
		end
	end
end
