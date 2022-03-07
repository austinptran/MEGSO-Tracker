# frozen_string_literal: true

class Student < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :event, through: :attendee_list
end
