class RegistrationReminder < ApplicationMailer

  def remind_dancer(user)
    @user = user
    mail to: @user.email, subject: "Pay your #{APP_CONFIG['sitename']} registration fee"
  end
end
