require 'rails_helper'

RSpec.describe 'Creating a event', type: :feature do
  scenario 'valid inputs' do
    visit new_event_path
    fill_in 'Event Name', with: 'Event test'
    fill_in 'Amount of Points', with: 10
    fill_in 'Event Location', with: 'over here'
    # if you use date_select in the form for book:
    select '2020', :from => 'event_event_date_1i'
    select 'September', :from => 'event_event_date_2i'
    select '28', :from => 'event_event_date_3i'
    select '19', :from => 'event_event_start_4i'
    select '03', :from => 'event_event_start_5i'
    select '19', :from => 'event_event_end_4i'
    select '05', :from => 'event_event_end_5i'
    fill_in 'Event Verification Code', with: 'CodeCode'
    fill_in 'Attendee List ID', with: 123

    click_on 'Create Event'
    visit events_path
    expect(page).to have_content('Event test')
    expect(page).to have_content('10')
    expect(page).to have_content('over here')
    expect(page).to have_content('2020-09-28')
    expect(page).to have_content('2000-01-01 19:03:00')
    expect(page).to have_content('2000-01-01 19:05:00')
    expect(page).to have_content('CodeCode')
    expect(page).to have_content('123')
  end
end
