class Event < ApplicationRecord
  extend FriendlyId

  belongs_to :org, optional: true
  belongs_to :business, optional: true
  has_one :event_page, :dependent => :destroy

   friendly_id :event_name, use: :slugged
end
