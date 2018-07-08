class CreateUserProviders < ActiveRecord::Migration[5.2]
  create_table :user_providers, force: :cascade do |t|
    t.integer 'user_id', null: false
    t.string 'provider', null: false
    t.string 'uid', null: false

    t.timestamp
  end
end
