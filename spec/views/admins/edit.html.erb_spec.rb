require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      admin_name: "MyString",
      admin_pass: "MyString",
      admin_position: "MyString",
      admin_key: "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input[name=?]", "admin[admin_name]"

      assert_select "input[name=?]", "admin[admin_pass]"

      assert_select "input[name=?]", "admin[admin_position]"

      assert_select "input[name=?]", "admin[admin_key]"
    end
  end
end
