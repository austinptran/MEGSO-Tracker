# frozen_string_literal: true

class Alumni < ApplicationRecord
    validates :LinkedIn, :alumni_grad_year, :highest_position, presence: true, length: {minimum: 2, maximum: 50 }
    URL_REGEXP = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
    validates :LinkedIn, format: { with: URL_REGEXP, message: 'You provided invalid LinkedIn URL' }
end
