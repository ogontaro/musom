# frozen_string_literal: true

# == Schema Information
#
# Table name: habits
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Habit < ApplicationRecord
  has_many :commits, dependent: :destroy
end
