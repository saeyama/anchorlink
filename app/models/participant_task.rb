class ParticipantTask < ApplicationRecord
  enum status:{incomplete: 0,done: 1}
  #incomplete:未完了, done:完了

  belongs_to :participant
  belongs_to :task
end
