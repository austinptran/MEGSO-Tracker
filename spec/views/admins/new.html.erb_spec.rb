require 'rails_helper'

RSpec.describe "admins/new", type: :view do
  before(:each) do
    assign(:admin, Admin.new(
      admin_name: "MyString",
      admin_pass: "MyString",
      admin_position: "MyString",
      admin_key: "MyString"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "input[name=?]", "admin[admin_name]"

      assert_select "input[name=?]", "admin[admin_pass]"

      assert_select "input[name=?]", "admin[admin_position]"

      assert_select "input[name=?]", "admin[admin_key]"
    end
  end
end
