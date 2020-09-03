class CreateUserGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_goals do |t|
      t.boolean :complete
      t.text :notes
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
