# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('events/edit', type: :view) do
  before do
    @event = assign(:event, Event.create!(
                              event_name: 'MyString',
                              event_point: 1,
                              event_location: 'MyString',
                              event_date: '2020-01-01',
                              event_start: '2000-01-01 23:09:00 UTC',
                              event_end: '2000-01-01 23:09:00 UTC',
                              event_verification: 'MyString',
                              event_attendee_list_id: 'MyString'
                            )
    )
  end

  it 'renders the edit event form' do
    render

    assert_select 'form[action=?][method=?]', event_path(@event), 'post' do
      assert_select 'input[name=?]', 'event[event_name]'

      assert_select 'input[name=?]', 'event[event_point]'

      assert_select 'input[name=?]', 'event[event_location]'

      assert_select 'input[name=?]', 'event[event_date]'

      assert_select 'input[name=?]', 'event[event_start]'

      assert_select 'input[name=?]', 'event[event_end]'

      assert_select 'input[name=?]', 'event[event_verification]'

      assert_select 'input[name=?]', 'event[event_attendee_list_id]'
    end
  end
end
