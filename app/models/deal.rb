class Deal < ApplicationRecord
  has_many :users 
  has_many :capital_accounts
  has_many :capital_contributions
  
end
