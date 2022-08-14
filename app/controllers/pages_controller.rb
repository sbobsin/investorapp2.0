class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def investor_index
    @users = User.all
  end 



  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to request.referrer, notice: 'User deleted.'
  end
end