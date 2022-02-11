require 'rails_helper'

RSpec.describe "alumnis/new", type: :view do
  before(:each) do
    assign(:alumni, Alumni.new(
      first_name: "MyString",
      last_name: "MyString",
      LinkedIn: "MyString",
      alumni_occupation: "MyString",
      alumni_grad_year: 1
    ))
  end

  it "renders new alumni form" do
    render

    assert_select "form[action=?][method=?]", alumnis_path, "post" do

      assert_select "input[name=?]", "alumni[first_name]"

      assert_select "input[name=?]", "alumni[last_name]"

      assert_select "input[name=?]", "alumni[LinkedIn]"

      assert_select "input[name=?]", "alumni[alumni_occupation]"

      assert_select "input[name=?]", "alumni[alumni_grad_year]"
    end
  end
end
