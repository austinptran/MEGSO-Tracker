require 'rails_helper'

RSpec.describe "rewards_approval_lists/new", type: :view do
  before(:each) do
    assign(:rewards_approval_list, RewardsApprovalList.new(
      reward_name: "MyString",
      UID: 1
    ))
  end

  it "renders new rewards_approval_list form" do
    render

    assert_select "form[action=?][method=?]", rewards_approval_lists_path, "post" do

      assert_select "input[name=?]", "rewards_approval_list[reward_name]"

      assert_select "input[name=?]", "rewards_approval_list[UID]"
    end
  end
end
