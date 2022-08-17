module ApplicationHelper

  def current_user_first_investment_date
    l(CapitalAccount.where(user_id: current_user.id).first.created_at.to_date, format: :long) rescue nil
  end 

  def current_user_deals
    CapitalAccount.where(user_id: current_user.id)
  end 
end
