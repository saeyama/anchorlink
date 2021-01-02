class TasksController < ApplicationController
  def index
    @purpose = Purpose.find_by(id: params[:purpose_id]) 
    # @task = @purpose.tasks
    # @participant = @purpose.participant_users

    # @participant_task = ParticipantTask.find_by(task_id: @task,participant_id: @participant)
    
    @participant_task = ParticipantTask.find_by(params[:participant_task_id])
  end
end
