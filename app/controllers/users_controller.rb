class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user = current_user
    @purposes = @user.purposes

    @participant_purposes = @user.participant_purposes
    
  end
end
