# == Schema Information
#
# Table name: users
#
#  id                              :bigint(8)        not null, primary key
#  activation_code                 :string
#  activation_code_expires_at      :datetime
#  activation_state                :string
#  crypted_password                :string
#  email                           :string           not null
#  failed_logins_count             :integer          default(0)
#  last_activity_at                :datetime
#  last_login_at                   :datetime
#  last_login_from_ip_address      :string
#  last_logout_at                  :datetime
#  lock_expires_at                 :datetime
#  remember_me_token               :string
#  remember_me_token_expires_at    :datetime
#  reset_password_email_sent_at    :datetime
#  reset_password_token            :string
#  reset_password_token_expires_at :datetime
#  salt                            :string
#  type                            :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#
# Indexes
#
#  index_users_on_activation_code                      (activation_code)
#  index_users_on_email                                (email)
#  index_users_on_last_logout_at_and_last_activity_at  (last_logout_at,last_activity_at)
#  index_users_on_remember_me_token                    (remember_me_token)
#

FactoryBot.define do
  factory :user do
    email "MyString"
    crypted_password "MyString"
    salt "MyString"
  end
end
