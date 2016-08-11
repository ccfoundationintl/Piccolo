class DonationMailer < ApplicationMailer

  # Email script to send donation request emails
  def request_a_donation(referral, user)
    @referral = referral
    @user = user
    mail(to: @referral.email, subject: "Support my #{APP_CONFIG['sitename']} campaign!", from: %(#{@user.first_name} #{@user.last_name} <#{@user.email}>))
  end

  # Donation notification email
  def donation_notification(donation)
    if donation.donated_type == "User"
      @donation = donation
      if User.find_by(email: @donation.email).present?
        @donor = User.find_by(email: @donation.email)
      end
      @user = User.find(donation.charged_id).email
      mail(to: @user, subject: "You have received a donation!", body: @body)
    end
  end
end
