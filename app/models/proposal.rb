class Proposal < ApplicationRecord
  belongs_to :org
  

  has_many :bids
end
