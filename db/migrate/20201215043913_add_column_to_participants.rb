class AddColumnToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :alarm, :string
  end
end
