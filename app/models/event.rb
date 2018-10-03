class Event < ApplicationRecord
  belongs_to :org, optional: true
  belongs_to :business, optional: true
  has_one :event_page, :dependent => :destroy
end
