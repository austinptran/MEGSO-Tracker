require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      event_name: "MyString",
      event_point: 1,
      event_location: "MyString",
      event_verification: "MyString",
      event_attendee_list_id: "abv"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[event_name]"

      assert_select "input[name=?]", "event[event_point]"

      assert_select "input[name=?]", "event[event_location]"

      assert_select "input[name=?]", "event[event_verification]"

      assert_select "input[name=?]", "event[event_attendee_list_id]"
    end
  end
end
