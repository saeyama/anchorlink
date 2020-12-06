class PurposesController < ApplicationController

  def new
    @purpose = Purpose.new
  end

  def confirm
    @purpose = Purpose.new(purpose_params)
    render :new if @purpose.invalid?  
  end

  
  def create
    @purpose = Purpose.new(purpose_params)
    render :show and return if params[:back] || !@purpose.save
    redirect_to @purpose
  end

  def show
    @purpose = Purpose.find_by(id: params[:id])
  end  
private
  def purpose_params
    params.require(:purpose).permit(:title, :description, :image, :classification)
  end  
end

