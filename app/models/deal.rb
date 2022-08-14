class Deal < ApplicationRecord
  has_many :capital_accounts
  has_many :users, through: :capital_accounts
  has_many :capital_contributions
  
  def full_address
    "#{address}, #{city} #{state}, #{zip}"
  end 
end
