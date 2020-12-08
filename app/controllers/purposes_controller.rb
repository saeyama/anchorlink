class PurposesController < ApplicationController

  def index
    @purposes = Purpose.all
  end

  def new
    @purpose = Purpose.new
  end

  def confirm
    @purpose = Purpose.new(purpose_params)
    @purpose.user_id = current_user.id
    # @purpose.image = File.new(params[:purpose][:image])
    binding.pry
    
    render :new if @purpose.invalid?  
  end

  
  def create
    @purpose = Purpose.new(purpose_params)
    @purpose.user_id = current_user.id
    render :new and return if params[:back] || !@purpose.save
    redirect_to @purpose
  end

  def show
    @purpose = Purpose.find_by(id: params[:id])
    @user = @purpose.user
  end


private
  def purpose_params
    params.require(:purpose).permit(:title, :description, :image, :classification)
  end  
end


