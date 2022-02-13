require 'rails_helper'

RSpec.describe "occupations/show", type: :view do
  before(:each) do
    @occupation = assign(:occupation, Occupation.create!(
      occupation_role: "Occupation Role",
      occupation_company: "Occupation Company",
      occupation_location: "Occupation Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Occupation Role/)
    expect(rendered).to match(/Occupation Company/)
    expect(rendered).to match(/Occupation Location/)
  end
end
