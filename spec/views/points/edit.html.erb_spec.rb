require 'rails_helper'

RSpec.describe "points/edit", type: :view do
  before(:each) do
    @point = assign(:point, Point.create!(
      point_count: 1,
      reward: "MyString"
    ))
  end

  it "renders the edit point form" do
    render

    assert_select "form[action=?][method=?]", point_path(@point), "post" do

      assert_select "input[name=?]", "point[point_count]"

      assert_select "input[name=?]", "point[reward]"
    end
  end
end
