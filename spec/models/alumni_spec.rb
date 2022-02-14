require 'rails_helper'

RSpec.describe 'Add an alumni', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
  scenario 'valid inputs' do
    visit new_alumni_path
    fill_in 'First Name', with: 'FName'
    fill_in 'Last Name', with: 'LName'
    fill_in 'LinkedIn URL', with: 'https://www.linkedin.com/'
    fill_in 'Occupation', with: 'Employee'
    fill_in 'Graduation Year', with: '2018'
    click_on 'Add Alumni'
    visit alumnis_path
    expect(page).to have_content('FName')
    expect(page).to have_content('LName')
    expect(page).to have_content('https://www.linkedin.com/')
    expect(page).to have_content('Employee')
    expect(page).to have_content('2018')
  end
end