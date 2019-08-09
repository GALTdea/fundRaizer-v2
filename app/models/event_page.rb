class EventPage < ApplicationRecord
  belongs_to :business, optional: true
  belongs_to :org, optional: true
  belongs_to :event, optional: true

  has_one :org, through: :event


  

end
