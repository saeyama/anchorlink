class ParticipantsController < ApplicationController

  before_action :authenticate_user!

  def category
  end

  # def index
  # end

  # def show
  # end

  def new
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.new
  end

  def create
    @purpose = Purpose.find(params[:purpose_id])
    @participant = Participant.create(participant_params)

    if @participant.save
      redirect_to @purpose, success: '目的に参加しました。' 
    else
      flash.now[:danger] = '目的に参加できませんでした。'
    end 
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private
  def participant_params
    params.require(:participant).permit(:goal, :notice, :alarm).merge(purpose_id: params[:purpose_id], user_id: current_user.id)
  end

end
