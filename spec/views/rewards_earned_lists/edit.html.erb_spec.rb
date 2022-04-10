require 'rails_helper'

RSpec.describe "rewards_earned_lists/edit", type: :view do
  before(:each) do
    @rewards_earned_list = assign(:rewards_earned_list, RewardsEarnedList.create!(
      reward_name: "MyString",
      UID: 1
    ))
  end

  it "renders the edit rewards_earned_list form" do
    render

    assert_select "form[action=?][method=?]", rewards_earned_list_path(@rewards_earned_list), "post" do

      assert_select "input[name=?]", "rewards_earned_list[reward_name]"

      assert_select "input[name=?]", "rewards_earned_list[UID]"
    end
  end
end
