# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('officers/new', type: :view) do
  before do
    assign(:officer, Officer.new(
                       position: 'MyString'
                     )
    )
  end

  it 'renders new officer form' do
    render

    assert_select 'form[action=?][method=?]', officers_path, 'post' do
      assert_select 'input[name=?]', 'officer[position]'
    end
  end
end
