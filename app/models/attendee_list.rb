# frozen_string_literal: true

class AttendeeList < ApplicationRecord
  belongs_to :event, optional: true
  has_many :student
end
