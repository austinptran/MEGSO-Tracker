# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('alumnis/show', type: :view) do
  before do
    @alumni = assign(:alumni, Alumni.create!(
                                LinkedIn: 'Linked In',
                                alumni_grad_year: 2,
                                highest_position: 'Highest Position'
                              )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Linked In/))
    expect(rendered).to(match(/2/))
    expect(rendered).to(match(/Highest Position/))
  end
end
