require "administrate/base_dashboard"

class EventPageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    business: Field::BelongsTo,
    org: Field::BelongsTo,
    event: Field::BelongsTo,
    id: Field::Number,
    event_name: Field::String,
    address: Field::String,
    date_start: Field::DateTime,
    date_end: Field::DateTime,
    about: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    short_desc: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :business,
    :org,
    :event,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :business,
    :org,
    :event,
    :id,
    :event_name,
    :address,
    :date_start,
    :date_end,
    :about,
    :created_at,
    :updated_at,
    :short_desc,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :business,
    :org,
    :event,
    :event_name,
    :address,
    :date_start,
    :date_end,
    :about,
    :short_desc,
  ].freeze

  # Overwrite this method to customize how event pages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(event_page)
  #   "EventPage ##{event_page.id}"
  # end
end
