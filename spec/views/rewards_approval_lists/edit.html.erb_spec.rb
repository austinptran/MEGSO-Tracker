require 'rails_helper'

RSpec.describe "rewards_approval_lists/edit", type: :view do
  before(:each) do
    @rewards_approval_list = assign(:rewards_approval_list, RewardsApprovalList.create!(
      reward_name: "MyString",
      UID: 1
    ))
  end

  it "renders the edit rewards_approval_list form" do
    render

    assert_select "form[action=?][method=?]", rewards_approval_list_path(@rewards_approval_list), "post" do

      assert_select "input[name=?]", "rewards_approval_list[reward_name]"

      assert_select "input[name=?]", "rewards_approval_list[UID]"
    end
  end
end
