# frozen_string_literal: true

class Alumni < ApplicationRecord
    validates :LinkedIn, :alumni_grad_year, :highest_position, presence: true, length: {minimum: 2, maximum: 50 }
    validates_format_of :LinkedIn, :with => URI::regexp(%w(http https))
end
