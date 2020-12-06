class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :purpose_id
      t.float :rate
      t.text :comment
      t.timestamps
    end
  end
end
