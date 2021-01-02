class ParticipantTasksController < ApplicationController

  def show
    @purpose = Purpose.find_by(id: params[:purpose_id])
    @participant = Participant.find_by(id: params[:participant_id])
    @participant_task = ParticipantTask.find_by(params[:participant_task_id])
  end

  def index

    @purpose = Purpose.find_by(id: params[:purpose_id])
    @participant = Participant.find_by(id: params[:participant_id])
    @participant.user_id = current_user.id
    @participant_task = ParticipantTask.find_by(params[:participant_task_id])
   
    
    # @participant_tasks = @participant.progress_tasks
    
  end
  

  def update
    @participant_task = ParticipantTask.find_by(params[:id])
    
    if @participant_task.update(participant_task_params)
      redirect_to purpose_participant_participant_tasks_path, success: 'タスクを更新しました。' 
    else
      flash.now[:danger] = 'タスクを更新できませんでした。'
      render root_path
    end
  end     

  private
  def participant_task_params
    params.require(:participant_task).permit(:status)
  end

end
