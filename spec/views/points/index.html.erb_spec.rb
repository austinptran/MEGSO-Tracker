require 'rails_helper'

RSpec.describe "points/index", type: :view do
  before(:each) do
    assign(:points, [
      Point.create!(
        point_count: 2,
        reward: "Reward"
      ),
      Point.create!(
        point_count: 2,
        reward: "Reward"
      )
    ])
  end

  it "renders a list of points" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Reward".to_s, count: 2
  end
end
