class CapitalAccount < ApplicationRecord
  has_many :capital_contributions
  belongs_to :deal
end
