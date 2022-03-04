require 'rails_helper'

RSpec.describe "rewards/new", type: :view do
  before(:each) do
    assign(:reward, Reward.new(
      reward_name: "MyString",
      reward_points: 1
    ))
  end

  it "renders new reward form" do
    render

    assert_select "form[action=?][method=?]", rewards_path, "post" do

      assert_select "input[name=?]", "reward[reward_name]"

      assert_select "input[name=?]", "reward[reward_points]"
    end
  end
end
