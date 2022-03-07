# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/index', type: :view) do
  before do
    assign(:events, [
      Event.create!(
        event_name: 'Event Name',
        event_point: 2,
        event_location: 'Event Location',
        event_verification: 'Event Verification'
      ),
      Event.create!(
        event_name: 'Event Name',
        event_point: 2,
        event_location: 'Event Location',
        event_verification: 'Event Verification'
      )
    ]
    )
  end

  it 'renders a list of events' do
    render
    assert_select 'tr>td', text: 'Event Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Event Location'.to_s, count: 2
    assert_select 'tr>td', text: 'Event Verification'.to_s, count: 2
    assert_select 'tr>td', text: 'abv'.to_s, count: 2
  end
end
