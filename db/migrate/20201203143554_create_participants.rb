class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.integer :purpose_id
      t.string :goal
      t.string :notice
      t.timestamps
    end
  end
end
