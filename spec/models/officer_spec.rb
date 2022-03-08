require 'rails_helper'

RSpec.describe 'Add an Officer', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
	scenario 'officer valid inputs' do
    visit new_officer_path
    fill_in 'Position', with: 'Secretary'
    click_on 'Create Officer'
    visit officers_path
    expect(page).to have_content('Secretary')
	end
end
