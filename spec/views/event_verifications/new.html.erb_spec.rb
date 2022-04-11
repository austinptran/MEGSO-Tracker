require 'rails_helper'

RSpec.describe "event_verifications/new", type: :view do
  before(:each) do
    assign(:event_verification, EventVerification.new(
      event_verification: "MyString",
      event_id: 1
    ))
  end

  it "renders new event_verification form" do
    render

    assert_select "form[action=?][method=?]", event_verifications_path, "post" do

      assert_select "input[name=?]", "event_verification[event_verification]"

      assert_select "input[name=?]", "event_verification[event_id]"
    end
  end
end
