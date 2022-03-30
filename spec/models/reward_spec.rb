require 'rails_helper'

RSpec.describe 'Add a Reward', type: :feature do
  #pending "add some examples to (or delete) #{__FILE__}"
	scenario 'reward valid inputs' do
    visit new_reward_path
    fill_in 'Reward Name', with: 'Teddy Bear'
    fill_in 'Points Required', with: '10'
    click_on 'Create Reward'
    visit rewards_path
    expect(page).to have_content('Teddy Bear')
    expect(page).to have_content('10')
	end
end
