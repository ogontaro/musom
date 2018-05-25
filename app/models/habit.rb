class Habit < ApplicationRecord
  has_many :commits, dependent: :destroy
end
