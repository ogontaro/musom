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

FactoryBot.define do
  factory :user do
    email "MyString"
    crypted_password "MyString"
    salt "MyString"
  end
end
