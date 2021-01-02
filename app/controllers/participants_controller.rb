class ParticipantsController < ApplicationController

  before_action :authenticate_user!

  def category
  end

  def index
    @purpose = Purpose.find_by(id: params[:purpose_id])
    @participant = Participant.find_by(id: params[:participant_id])
    # @participant.user_id = current_user.id
    @participant_task = ParticipantTask.find_by(params[:participant_task_id])  
  end


  def show
    @purpose = Purpose.find_by(id: params[:purpose_id])
    @participant = Participant.find_by(id: params[:participant_id])
    # @participant.user_id = current_user.id
    @participant_task = ParticipantTask.find_by(params[:participant_task_id])
  end

  def new
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.new
  end

  def create
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.new(participant_params)

    if @participant.save

      #ParticipantTask status0未完了set
      @purpose.tasks.each do |task| 
        ParticipantTask.create({task_id: task.id, participant_id: @participant.id, status: 0})
      end
      
      #participantのshowならpurpose_participant_path(@purpose.id,@participant.id)
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
