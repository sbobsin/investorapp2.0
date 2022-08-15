class CapitalAccount < ApplicationRecord
  has_many :capital_contributions
  has_many :capital_distributions, inverse_of: :capital_account
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  belongs_to :deal
  belongs_to :user
end
