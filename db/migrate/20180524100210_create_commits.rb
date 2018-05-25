class CreateCommits < ActiveRecord::Migration[5.2]
  def change
    create_table :commits do |t|
      t.string :description
      t.text :url
      t.references :habit, foreign_key: true

      t.timestamps
    end
  end
end
