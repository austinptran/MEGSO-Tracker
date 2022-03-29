# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('alumnis/index', type: :view) do
  before do
    assign(:alumnis, [
      Alumni.create!(
        LinkedIn: 'Linked In',
        alumni_grad_year: 2,
        highest_position: 'Secretary'
      ),
      Alumni.create!(
        LinkedIn: 'Linked In',
        alumni_grad_year: 2,
        highest_position: 'Secretary'
      )
    ]
    )
  end

  it 'renders a list of alumnis' do
    assert_select 'tr>td', text: 'Linked In'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Secretary'.to_s, count: 2
  end
end
