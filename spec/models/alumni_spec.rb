require 'rails_helper'

RSpec.describe 'Add an Alumni', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
  scenario 'alumni valid inputs' do
    visit new_alumni_path
    fill_in 'LinkedIn URL', with: 'https://www.linkedin.com/'
    fill_in 'Graduation Year', with: '2018'
		fill_in 'Highest Position', with: 'President'
    click_on 'Create Alumni'
    visit alumnis_path
    expect(page).to have_content('https://www.linkedin.com/')
    expect(page).to have_content('2018')
		expect(page).to have_content('President')
  end
end