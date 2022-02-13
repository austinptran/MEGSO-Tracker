require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      admin_name: "Admin Name",
      admin_pass: "Admin Pass",
      admin_position: "Admin Position",
      admin_key: "Admin Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Admin Name/)
    expect(rendered).to match(/Admin Pass/)
    expect(rendered).to match(/Admin Position/)
    expect(rendered).to match(/Admin Key/)
  end
end
