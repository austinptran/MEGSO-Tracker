# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('officers/show', type: :view) do
  before do
    @officer = assign(:officer, Officer.create!(
                                  position: 'Position'
                                )
    )
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to(match(/Position/))
  end
end
