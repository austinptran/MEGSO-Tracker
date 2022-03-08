# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('rewards/edit', type: :view) do
  before do
    @reward = assign(:reward, Reward.create!(
                                reward_name: 'MyString',
                                reward_points: 1
                              )
    )
  end

  it 'renders the edit reward form' do
    render

    assert_select 'form[action=?][method=?]', reward_path(@reward), 'post' do
      assert_select 'input[name=?]', 'reward[reward_name]'

      assert_select 'input[name=?]', 'reward[reward_points]'
    end
  end
end
