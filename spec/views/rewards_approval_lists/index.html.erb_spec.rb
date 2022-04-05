require 'rails_helper'

RSpec.describe "rewards_approval_lists/index", type: :view do
  before(:each) do
    assign(:rewards_approval_lists, [
      RewardsApprovalList.create!(
        reward_name: "Reward Name",
        UID: 2
      ),
      RewardsApprovalList.create!(
        reward_name: "Reward Name",
        UID: 2
      )
    ])
  end

  it "renders a list of rewards_approval_lists" do
    render
    assert_select "tr>td", text: "Reward Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
