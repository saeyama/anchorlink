class Task < ApplicationRecord
  belongs_to :purpose

  #追記
  has_many :participant_tasks
  has_many :progress_participants, through: :participant_tasks, source: 'participant'

end
