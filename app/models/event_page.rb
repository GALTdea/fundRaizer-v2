class EventPage < ApplicationRecord
  belongs_to :business, optional: true
  belongs_to :org, optional: true


  

end
