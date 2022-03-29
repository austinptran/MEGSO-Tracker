require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the EventsHelper. For example:
#
# describe EventsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe EventsHelper, type: :helper do
  describe "#check_event_name" do
		it "returns correct event name" do
			assign(:event_name, "Fight Night")
			helper.check_event_name.should eql("Fight Night")
		end
	end
	describe "#check_event_date" do
		it "returns correct event date" do
			assign(:event_date, "2022-03-21")
			helper.check_event_date.should eql("2022-03-21")
		end
	end
end
