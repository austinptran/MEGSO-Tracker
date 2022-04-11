require 'rails_helper'

RSpec.describe "event_verifications/edit", type: :view do
  before(:each) do
    @event_verification = assign(:event_verification, EventVerification.create!(
      event_verification: "MyString",
      event_id: 1
    ))
  end

  it "renders the edit event_verification form" do
    render

    assert_select "form[action=?][method=?]", event_verification_path(@event_verification), "post" do

      assert_select "input[name=?]", "event_verification[event_verification]"

      assert_select "input[name=?]", "event_verification[event_id]"
    end
  end
end
