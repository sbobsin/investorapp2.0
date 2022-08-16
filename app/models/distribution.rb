class Distribution < ApplicationRecord
  belongs_to :deal
  before_save :assign_investor

  def assign_investor
    self.user_id = CapitalAccount.find_by(id: self.capital_account_id).user_id
  end 
end
