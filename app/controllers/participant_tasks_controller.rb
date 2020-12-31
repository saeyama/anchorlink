class ParticipantTasksController < ApplicationController

  def show
    
  end
  


  def update
    @participant_task = ParticipantTask.find_by(params[:id])
    
    if @participant_task.update(participant_task_params)
      redirect_to purpose_tasks_path, success: 'タスクを更新しました。' 
    else
      flash.now[:danger] = 'タスクを更新できませんでした。'
      render purpose_tasks_path
    end
  end     

  private
  def participant_task_params
    params.require(:participant_task).permit(:status)
  end

end
