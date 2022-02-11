require 'rails_helper'

RSpec.describe "alumnis/index", type: :view do
  before(:each) do
    assign(:alumnis, [
      Alumni.create!(
        first_name: "First Name",
        last_name: "Last Name",
        LinkedIn: "Linked In",
        alumni_occupation: "Alumni Occupation",
        alumni_grad_year: 2
      ),
      Alumni.create!(
        first_name: "First Name",
        last_name: "Last Name",
        LinkedIn: "Linked In",
        alumni_occupation: "Alumni Occupation",
        alumni_grad_year: 2
      )
    ])
  end

  it "renders a list of alumnis" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Linked In".to_s, count: 2
    assert_select "tr>td", text: "Alumni Occupation".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
