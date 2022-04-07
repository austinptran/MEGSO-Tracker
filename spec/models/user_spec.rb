require 'rails_helper'

RSpec.describe 'Add a User', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
	scenario 'user valid inputs' do
		visit new_user_path
		fill_in 'First Name', with: 'Joseph'
		fill_in 'Last Name', with: 'Joestar'
		fill_in 'Email', with: 'jojo123@gmail.com'
		fill_in 'UIN', with: '123456789'
		fill_in 'Password', with: "password"
		fill_in 'Confirmation', with: "password"
		click_on 'Create my account'
		visit users_path
		expect(page).to have_content('Joseph')
		expect(page).to have_content('Joestar')
		expect(page).to have_content('jojo123@gmail.com')
		expect(page).to have_content('123456789')
	end
end
