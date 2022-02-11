require 'rails_helper'

RSpec.describe "points/show", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      point_count: 2,
      reward: "Reward"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Reward/)
  end
end
