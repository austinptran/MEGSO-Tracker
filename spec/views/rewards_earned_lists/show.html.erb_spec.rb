require 'rails_helper'

RSpec.describe "rewards_earned_lists/show", type: :view do
  before(:each) do
    @rewards_earned_list = assign(:rewards_earned_list, RewardsEarnedList.create!(
      reward_name: "Reward Name",
      UID: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reward Name/)
    expect(rendered).to match(/2/)
  end
end
