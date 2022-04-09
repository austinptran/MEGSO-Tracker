# frozen_string_literal: true

class Reward < ApplicationRecord
    validates :reward_name, :reward_points, :reward_description, presence: true, uniqueness: true
    validates :reward_name, length: {minimum: 2, maximum: 50 }
end
