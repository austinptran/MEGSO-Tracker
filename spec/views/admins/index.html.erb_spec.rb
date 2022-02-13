require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        admin_name: "Admin Name",
        admin_pass: "Admin Pass",
        admin_position: "Admin Position",
        admin_key: "Admin Key"
      ),
      Admin.create!(
        admin_name: "Admin Name",
        admin_pass: "Admin Pass",
        admin_position: "Admin Position",
        admin_key: "Admin Key"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", text: "Admin Name".to_s, count: 2
    assert_select "tr>td", text: "Admin Pass".to_s, count: 2
    assert_select "tr>td", text: "Admin Position".to_s, count: 2
    assert_select "tr>td", text: "Admin Key".to_s, count: 2
  end
end
