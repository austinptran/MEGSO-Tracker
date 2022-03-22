# frozen_string_literal: true

class Alumni < ApplicationRecord
validates :LinkedIn, :alumni_grad_year, :highest_position, presence: true, length: {minimum: 2, maximum: 50 }
end
