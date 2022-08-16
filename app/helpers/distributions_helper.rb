module DistributionsHelper
  def distribution_types
    [
      ["Preferred Distribution", "Preferred Distribution"],
      ["Capital Distribution", "Capital Distribution"],
      ["General Distribution", "General Distribution"]
    ]
  end 
  def deal_capital_accounts(deal_id)
    CapitalAccount.where(deal_id: deal_id).order('user_id ASC').collect { |x| [ "#{x.user&.full_name} (#{x.deal.name}) ", x.id ] }
  end 
  
  def investor(capital_account_id)
    User.find_by(id: capital_account_id)
  end 
end
