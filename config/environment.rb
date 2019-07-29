# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
require 'carrierwave/orm/activerecord'



ActionMailer::Base.smtp_settings = {
  :user_name => ENV['your_sendgrid_username'],
  :password => ENV['your_sendgrid_password'],
  :domain => 'gofundraisable.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}