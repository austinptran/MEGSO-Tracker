require 'rails_helper'

RSpec.describe 'Add an Occupation', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
	scenario 'occupation valid inputs' do
    visit new_occupation_path
    fill_in 'Occupation', with: 'Software Developer'
    fill_in 'Company', with: 'FaceZonGoogAppFlix'
		fill_in 'Company Location', with: 'Los Santos'
    click_on 'Create Occupation'
    visit occupations_path
    expect(page).to have_content('Software Developer')
    expect(page).to have_content('FaceZonGoogAppFlix')
		expect(page).to have_content('Los Santos')
	end
end
