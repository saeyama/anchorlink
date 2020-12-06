class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :purpose_id
      t.string :list
      t.integer :percent
      t.timestamps
    end
  end
end
