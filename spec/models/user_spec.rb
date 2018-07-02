# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  crypted_password :string           default(""), not null
#  email            :string           not null
#  salt             :string           default(""), not null
#  username         :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
