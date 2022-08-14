class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def investor_index
    @users = User.all
    @lifetime_contributions = Hash.new(0)
  end 

  def dashboard
    @lifetime_contributions = Hash.new(0)
    @current_capital_invested = Hash.new(0)
  end 
end