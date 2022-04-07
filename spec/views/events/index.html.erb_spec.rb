# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/index', type: :view) do
  before do
    assign(:events, [
      Event.create!(
        event_name: 'Event Name',
        event_point: 2,
        event_date: '2020-01-01',
        event_start: '2000-01-01 23:09:00 UTC',
        event_end: '2000-01-01 23:09:00 UTC',
        event_location: 'Event Location',
        event_verification: 'Event Verification',
        event_attendee_list_id: '123'
      ),
      Event.create!(
        event_name: 'Event Name',
        event_point: 2,
        event_date: '2020-01-01',
        event_start: '2000-01-01 23:09:00 UTC',
        event_end: '2000-01-01 23:09:00 UTC',
        event_location: 'Event Location',
        event_verification: 'Event Verification',
        event_attendee_list_id: '123'
      )
    ]
    )
  end

  it 'renders a list of events' do
    render
    assert_select 'tr>td', text: 'Event Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Event Location'.to_s, count: 2
    assert_select 'tr>td', text: '2020-01-01'.to_s, count: 2
    assert_select 'tr>td', text: '2000-01-01 23:09:00 UTC'.to_s, count: 4
    assert_select 'tr>td', text: 'Event Verification'.to_s, count: 2
    assert_select 'tr>td', text: '123'.to_s, count: 2
  end
end
