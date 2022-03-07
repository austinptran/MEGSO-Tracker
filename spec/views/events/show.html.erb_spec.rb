# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/show', type: :view) do
  before do
    @event = assign(:event, Event.create!(
                              event_name: 'Event Name',
                              event_point: 2,
                              event_location: 'Event Location',
                              event_verification: 'Event Verification'
                            )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Event Name/))
    expect(rendered).to(match(/2/))
    expect(rendered).to(match(/Event Location/))
    expect(rendered).to(match(/Event Verification/))
    expect(rendered).to(match(/3/))
  end
end
