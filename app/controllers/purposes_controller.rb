class PurposesController < ApplicationController

  def index
    # @purposes = Purpose.all
    @books= Purpose.where(classification: '本')
    @qualifications = Purpose.where(classification: '試験')
    @healths = Purpose.where(classification: '健康')
    @moneys = Purpose.where(classification: 'お金')

  end

  def new
    @purpose = Purpose.new
    @purpose.tasks.build
  end

  def confirm

    @purpose = current_user.purposes.build(purpose_params)
    @tasks = @purpose.tasks
    
    return if @purpose.valid?  #validateチェック
    flash.now[:alert] = "入力内容にエラーがあります。"
    render :new
    
    # render :new if @purpose.invalid?  
  end
  
  def create
    @purpose = current_user.purposes.build(purpose_params)
    render :new and return if params[:back] || !@purpose.save
    redirect_to @purpose, success: "目的の登録が完了しました"
  end

  def show
    @purpose = Purpose.find_by(id: params[:id])

    if @purpose.scores.blank?
      @average_score = 0
    else
      @average_score = @purpose.scores.average(:rate).round(1)
    end
  end

private
  def purpose_params
    params.require(:purpose).permit(:classification, :title, :description, :image, :image_cache, tasks_attributes: [:list, :percent])
  end  
end


