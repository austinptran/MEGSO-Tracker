require 'rails_helper'

RSpec.describe "occupations/index", type: :view do
  before(:each) do
    assign(:occupations, [
      Occupation.create!(
        occupation_role: "Occupation Role",
        occupation_company: "Occupation Company",
        occupation_location: "Occupation Location"
      ),
      Occupation.create!(
        occupation_role: "Occupation Role",
        occupation_company: "Occupation Company",
        occupation_location: "Occupation Location"
      )
    ])
  end

  it "renders a list of occupations" do
    render
    assert_select "tr>td", text: "Occupation Role".to_s, count: 2
    assert_select "tr>td", text: "Occupation Company".to_s, count: 2
    assert_select "tr>td", text: "Occupation Location".to_s, count: 2
  end
end
