class ParticipantsController < ApplicationController
  def category
    @purpose_id = params[:purpose_id]
  end

  # def index
  # end

  # def show
  # end

  def new
    @comment = Comment.new
    @purpose_id = params[:purpose_id]
  end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end  
end
