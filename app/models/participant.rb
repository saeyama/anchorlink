class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :purpose

  #追記
  has_many :participant_tasks
end
