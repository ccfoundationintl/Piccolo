class ApplicationMailer < ActionMailer::Base
  default from: %(#{APP_CONFIG['sitename']} <#{APP_CONFIG['email']}>)
  layout 'mailer'
end
