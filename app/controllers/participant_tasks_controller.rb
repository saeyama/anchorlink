class ParticipantTasksController < ApplicationController

  def create
    @participant_task = ParticipantTask.new(participant_task_params)
    @participant_task.participant_id = @participant
    @participant_task.task_id = @purpose.tasks
    

    respond_to do |format|
      if @participant_task.save
          format.html { redirect_to @purpose,notice: 'タスクを登録しました' }
          format.js { render :action => "index" }        
      else
        flash.now[:alert] = "投稿に失敗しました"
        render :@purpose
      end
    end
  end     

  private
  def participant_task_params
    params.require(:participant_task).permit(:status)
  end


end
