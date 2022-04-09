require 'rails_helper'

RSpec.describe "rewards_approval_lists/show", type: :view do
  before(:each) do
    @rewards_approval_list = assign(:rewards_approval_list, RewardsApprovalList.create!(
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
