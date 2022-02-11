require 'rails_helper'

RSpec.describe "alumnis/show", type: :view do
  before(:each) do
    @alumni = assign(:alumni, Alumni.create!(
      first_name: "First Name",
      last_name: "Last Name",
      LinkedIn: "Linked In",
      alumni_occupation: "Alumni Occupation",
      alumni_grad_year: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Linked In/)
    expect(rendered).to match(/Alumni Occupation/)
    expect(rendered).to match(/2/)
  end
end
