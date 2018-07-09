# frozen_string_literal: true

# == Schema Information
#
# Table name: user_providers
#
#  id       :bigint(8)        not null, primary key
#  provider :string           not null
#  uid      :string           not null
#  user_id  :integer          not null
#

class UserProvider < ApplicationRecord
  belongs_to :user
end
