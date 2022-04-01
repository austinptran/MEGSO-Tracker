# frozen_string_literal: true

class Reward < ApplicationRecord
    validates :reward_name, :reward_points, presence: true
    validates :reward_name, length: {minimum: 2, maximum: 50 }
end
