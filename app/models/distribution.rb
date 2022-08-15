class Distribution < ApplicationRecord
  belongs_to :deal
  before_save :apply_to_capital_account

  def apply_to_capital_account
    @capital_account = CapitalAccount.where(deal_id: self.deal_id, user_id: self.user_id)
    self.update(capital_account_id: @capital_account.id)
  end
end
