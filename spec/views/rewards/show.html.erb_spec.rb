# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('rewards/show', type: :view) do
  before do
    @reward = assign(:reward, Reward.create!(
                                reward_name: 'Reward Name',
                                reward_points: 2
                              )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Reward Name/))
    expect(rendered).to(match(/2/))
  end
end
