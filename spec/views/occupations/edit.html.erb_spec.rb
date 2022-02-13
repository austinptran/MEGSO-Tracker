require 'rails_helper'

RSpec.describe "occupations/edit", type: :view do
  before(:each) do
    @occupation = assign(:occupation, Occupation.create!(
      occupation_role: "MyString",
      occupation_company: "MyString",
      occupation_location: "MyString"
    ))
  end

  it "renders the edit occupation form" do
    render

    assert_select "form[action=?][method=?]", occupation_path(@occupation), "post" do

      assert_select "input[name=?]", "occupation[occupation_role]"

      assert_select "input[name=?]", "occupation[occupation_company]"

      assert_select "input[name=?]", "occupation[occupation_location]"
    end
  end
end
