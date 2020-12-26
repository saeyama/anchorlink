class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :purpose

  #追記
  has_many :progress_tasks, through: :participant_tasks, source: 'task'
  has_many :participant_tasks
end
