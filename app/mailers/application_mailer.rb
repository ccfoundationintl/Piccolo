class ApplicationMailer < ActionMailer::Base
  default from: %(#{APP_CONFIG['sitename']} <#{APP_CONFIG['emai']}>)
  layout 'mailer'
end
