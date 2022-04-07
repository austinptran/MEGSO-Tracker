# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('alumnis/edit', type: :view) do
  before do
    @alumni = assign(:alumni, Alumni.create!(
                                LinkedIn: 'MyString',
                                alumni_grad_year: 1,
                                highest_position: 'President'
                              )
    )
  end

  it 'renders the edit alumni form' do
    render

    assert_select 'form[action=?][method=?]', alumni_path(@alumni), 'post' do
      assert_select 'input[name=?]', 'alumni[LinkedIn]'

      assert_select 'input[name=?]', 'alumni[alumni_grad_year]'

      assert_select 'input[name=?]', 'alumni[highest_position]'
    end
  end
end
