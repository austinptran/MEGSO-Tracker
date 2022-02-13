require 'rails_helper'

RSpec.describe "occupations/new", type: :view do
  before(:each) do
    assign(:occupation, Occupation.new(
      occupation_role: "MyString",
      occupation_company: "MyString",
      occupation_location: "MyString"
    ))
  end

  it "renders new occupation form" do
    render

    assert_select "form[action=?][method=?]", occupations_path, "post" do

      assert_select "input[name=?]", "occupation[occupation_role]"

      assert_select "input[name=?]", "occupation[occupation_company]"

      assert_select "input[name=?]", "occupation[occupation_location]"
    end
  end
end
