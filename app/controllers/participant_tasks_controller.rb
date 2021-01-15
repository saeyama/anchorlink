class ParticipantTasksController < ApplicationController

  def index
    @purpose = Purpose.find_by(id: params[:purpose_id])
  end
  

  def update
    @participant_task = ParticipantTask.find(params[:id])

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
