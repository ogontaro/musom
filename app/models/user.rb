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

class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, uniqueness: true
end
