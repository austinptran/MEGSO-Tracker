require 'rails_helper'

RSpec.describe "event_verifications/show", type: :view do
  before(:each) do
    @event_verification = assign(:event_verification, EventVerification.create!(
      event_verification: "Event Verification",
      event_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event Verification/)
    expect(rendered).to match(/2/)
  end
end
