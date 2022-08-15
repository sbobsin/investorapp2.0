class Deal < ApplicationRecord
  has_many :capital_accounts
  has_many :users, through: :capital_accounts
  has_many :capital_contributions
  has_many :distributions, inverse_of: :deal
  accepts_nested_attributes_for :distributions, reject_if: :all_blank, allow_destroy: true
  def full_address
    "#{address}, #{city} #{state}, #{zip}"
  end 
end
