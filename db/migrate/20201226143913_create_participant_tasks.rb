class CreateParticipantTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :participant_tasks do |t|
      t.integer :participant_id
      t.integer :task_id
      t.integer :status,default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
