class CreatePurposes < ActiveRecord::Migration[6.0]
  def change
    create_table :purposes do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :image
      t.string :classification
      t.timestamps
    end
  end
end
