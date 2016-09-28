class AdminMailer < ApplicationMailer

  # Sending mass emails to all the users
  def mass_user(message, subject)
    @addresses = User.pluck(:email)
    @message = message.html_safe
    @subject = subject
    mail(to: APP_CONFIG['email'], bcc: @addresses, subject: @subject)
  end

  # Sending mass emails to all the donors
  def mass_donor(donor, message, subject)
    @message = message
    @subject = subject
    @donor = donor
    mail(to: APP_CONFIG['email'], bcc: @donor.email, subject: @subject)
  end
end
