# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('alumnis/new', type: :view) do
  before do
    assign(:alumni, Alumni.new(
                      LinkedIn: 'MyString',
                      alumni_grad_year: 1,
                      highest_position: 'MyString'
                    )
    )
  end

  it 'renders new alumni form' do
    render

    assert_select 'form[action=?][method=?]', alumnis_path, 'post' do
      assert_select 'input[name=?]', 'alumni[LinkedIn]'

      assert_select 'input[name=?]', 'alumni[alumni_grad_year]'

      assert_select 'input[name=?]', 'alumni[highest_position]'
    end
  end
end
