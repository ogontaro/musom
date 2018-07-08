class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.string :activation_state
      t.string :activation_code
      t.datetime :activation_code_expires_at
      t.string :remember_me_token
      t.datetime :remember_me_token_expires_at
      t.string :reset_password_token
      t.datetime :reset_password_token_expires_at
      t.datetime :reset_password_email_sent_at
      t.datetime :last_login_at
      t.datetime :last_logout_at
      t.datetime :last_activity_at
      t.integer :failed_logins_count, default: 0
      t.datetime :lock_expires_at
      t.string :type
      t.string :last_login_from_ip_address

      t.timestamps
    end
    add_index :users, [:activation_code], name: :index_users_on_activation_code
    add_index :users, [:email], name: :index_users_on_email
    add_index :users, %w(last_logout_at last_activity_at), name: :index_users_on_last_logout_at_and_last_activity_at
    add_index :users, [:remember_me_token], name: :index_users_on_remember_me_token
  end
end
