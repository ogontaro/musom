# frozen_string_literal: true

class Habit < ApplicationRecord
  has_many :commits, dependent: :destroy
end
