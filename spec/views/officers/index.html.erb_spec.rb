require 'rails_helper'

RSpec.describe "officers/index", type: :view do
  before(:each) do
    assign(:officers, [
      Officer.create!(
        position: "Position"
      ),
      Officer.create!(
        position: "Position"
      )
    ])
  end

  it "renders a list of officers" do
    render
    assert_select "tr>td", text: "Position".to_s, count: 2
  end
end
