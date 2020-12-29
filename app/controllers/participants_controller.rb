class ParticipantsController < ApplicationController

  before_action :authenticate_user!

  def category
  end

  def new
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.new
  end

  def create
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.create(participant_params)

    if @participant.save

      @purpose.tasks.each do |task| 
        ParticipantTask.create({task_id: task.id, participant_id: @participant.id, status: 0})
      end

      redirect_to @purpose, success: '目的に参加しました。' 
    else
      flash.now[:danger] = '目的に参加できませんでした。'
    end 
  end

  private
  def participant_params
    params.require(:participant).permit(:goal, :notice, :alarm).merge(purpose_id: params[:purpose_id], user_id: current_user.id)
  end

end
