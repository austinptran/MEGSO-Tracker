require 'rails_helper'

RSpec.describe "event_verifications/index", type: :view do
  before(:each) do
    assign(:event_verifications, [
      EventVerification.create!(
        event_verification: "Event Verification",
        event_id: 2
      ),
      EventVerification.create!(
        event_verification: "Event Verification",
        event_id: 2
      )
    ])
  end

  it "renders a list of event_verifications" do
    render
    assert_select "tr>td", text: "Event Verification".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
