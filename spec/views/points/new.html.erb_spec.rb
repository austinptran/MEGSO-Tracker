require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      point_count: 1,
      reward: "MyString"
    ))
  end

  it "renders new point form" do
    render

    assert_select "form[action=?][method=?]", points_path, "post" do

      assert_select "input[name=?]", "point[point_count]"

      assert_select "input[name=?]", "point[reward]"
    end
  end
end
