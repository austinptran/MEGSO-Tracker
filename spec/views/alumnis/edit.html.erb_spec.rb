require 'rails_helper'

RSpec.describe "alumnis/edit", type: :view do
  before(:each) do
    @alumni = assign(:alumni, Alumni.create!(
      first_name: "MyString",
      last_name: "MyString",
      LinkedIn: "MyString",
      alumni_occupation: "MyString",
      alumni_grad_year: 1
    ))
  end

  it "renders the edit alumni form" do
    render

    assert_select "form[action=?][method=?]", alumni_path(@alumni), "post" do

      assert_select "input[name=?]", "alumni[first_name]"

      assert_select "input[name=?]", "alumni[last_name]"

      assert_select "input[name=?]", "alumni[LinkedIn]"

      assert_select "input[name=?]", "alumni[alumni_occupation]"

      assert_select "input[name=?]", "alumni[alumni_grad_year]"
    end
  end
end
