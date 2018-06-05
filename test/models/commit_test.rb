# frozen_string_literal: true

# == Schema Information
#
# Table name: commits
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  url         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  habit_id    :bigint(8)
#
# Indexes
#
#  index_commits_on_habit_id  (habit_id)
#
# Foreign Keys
#
#  fk_rails_...  (habit_id => habits.id)
#

require 'test_helper'

class CommitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
