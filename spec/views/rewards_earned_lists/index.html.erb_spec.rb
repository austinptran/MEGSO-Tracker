require 'rails_helper'

RSpec.describe "rewards_earned_lists/index", type: :view do
  before(:each) do
    assign(:rewards_earned_lists, [
      RewardsEarnedList.create!(
        reward_name: "Reward Name",
        UID: 2
      ),
      RewardsEarnedList.create!(
        reward_name: "Reward Name",
        UID: 2
      )
    ])
  end

  it "renders a list of rewards_earned_lists" do
    render
    assert_select "tr>td", text: "Reward Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
