class Event < ApplicationRecord
  belongs_to :business
  belongs_to :org
end
