class ScoresController < ApplicationController

  def index
    @purpose = Purpose.find(params[:purpose_id])
    @scores = @purpose.scores
  end

  def new
    @purpose = Purpose.find(params[:purpose_id])
    @score = Score.new
  end

  def create
    @purpose = Purpose.find(params[:purpose_id])
    @score = Score.new(score_params)
    if @score.save
      redirect_to purpose_scores_path, success: "ありがとうございます。評価を登録しました"
    else
      flash.now[:alert] = "評価の登録に失敗しました"
    end
  end

  private
  def score_params
    params.require(:score).permit(:rate, :comment).merge(purpose_id: params[:purpose_id], user_id: current_user.id)
  end

end
