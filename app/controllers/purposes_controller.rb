class PurposesController < ApplicationController

  def index
    @purposes = Purpose.all
  end

  def new
    @purpose = Purpose.new
    @purpose.tasks.build
  end

  def confirm
    @purpose = Purpose.new(purpose_params)
    @purpose.user_id = current_user.id
    @purpose.tasks.build
    # @purpose.image = File.new(params[:purpose][:image])

    return if @purpose.valid?(:purpose_validation) #validateチェック
    flash.now[:alert] = "入力内容にエラーがあります。"
    render :new
    
    # render :new if @purpose.invalid?  
  end
  
  def create
    @purpose = Purpose.new(purpose_params)
    @purpose.user_id = current_user.id

    # binding.pry
    render :new and return if params[:back] || !@purpose.save
    redirect_to @purpose
  end

  def show
    @purpose = Purpose.find_by(id: params[:id])
    # @user = @purpose.user
  end

private
  def purpose_params
    params.require(:purpose).permit(:classification, :title, :description, :image, :image_cache, tasks_attributes: [:list, :percent]).merge(user_id:current_user.id)
  end  
end


