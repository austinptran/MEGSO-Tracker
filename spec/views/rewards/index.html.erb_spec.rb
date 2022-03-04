require 'rails_helper'

RSpec.describe "rewards/index", type: :view do
  before(:each) do
    assign(:rewards, [
      Reward.create!(
        reward_name: "Reward Name",
        reward_points: 2
      ),
      Reward.create!(
        reward_name: "Reward Name",
        reward_points: 2
      )
    ])
  end

  it "renders a list of rewards" do
    render
    assert_select "tr>td", text: "Reward Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
