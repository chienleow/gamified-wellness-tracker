class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.integer :personal_points, :default => 0
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
