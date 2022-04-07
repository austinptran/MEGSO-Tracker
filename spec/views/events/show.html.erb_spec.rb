# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/show', type: :view) do
  before do
    @event = assign(:event, Event.create!(
                              event_name: 'Event Name',
                              event_point: 2,
                              event_location: 'Event Location',
                              event_date: '2020-01-01',
                              event_start: '2000-01-01 23:09:00 UTC',
                              event_end: '2000-01-01 23:09:00 UTC',
                              event_verification: 'Event Verification',
                              event_attendee_list_id: 'abc'
                            )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Event Name/))
    expect(rendered).to(match(/2/))
    expect(rendered).to(match(/Event Location/))
    expect(rendered).to(match(/2020-01-01/))
    expect(rendered).to(match(/2000-01-01 23:09:00 UTC/))
    expect(rendered).to(match(/2000-01-01 23:09:00 UTC/))
    expect(rendered).to(match(/Event Verification/))
    expect(rendered).to(match(/abc/))
  end
end
