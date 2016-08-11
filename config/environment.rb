# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Paperclip.options[:image_magick_path] = "/opt/ImageMagick/bin"
Paperclip.options[:command_path] = "/opt/ImageMagick/bin"

# for sending emails through SendGrid
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'xxx.herokuapp.com',
  :enable_starttls_auto => true
}
