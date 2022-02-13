class Alumni < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :LinkedIn, presence: true
    validates :alumni_occupation, presence: true
    validates :alumni_grad_year, presence: true
end
