require 'rails_helper'

RSpec.describe "rewards_earned_lists/new", type: :view do
  before(:each) do
    assign(:rewards_earned_list, RewardsEarnedList.new(
      reward_name: "MyString",
      UID: 1
    ))
  end

  it "renders new rewards_earned_list form" do
    render

    assert_select "form[action=?][method=?]", rewards_earned_lists_path, "post" do

      assert_select "input[name=?]", "rewards_earned_list[reward_name]"

      assert_select "input[name=?]", "rewards_earned_list[UID]"
    end
  end
end
