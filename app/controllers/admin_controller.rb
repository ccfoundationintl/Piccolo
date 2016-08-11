class AdminController < ApplicationController
  authorize_resource :class => false

  def index
    @users_count = User.count
    @active_teams = Team.joins(:users).group("teams.id").count.count
    @amount_raised = Donation.where(is_donation: true).sum(:amount)
  end

  def mass_mailer
    @message = params[:message]
    @subject = params[:subject]
    if params[:type] == "User"
      AdminMailer.mass_user(@message, @subject).deliver_now
    elsif params[:type] == "Donor"
      Referral.find_each do |donor|
        AdminMailer.mass_donor(donor, @message, @subject).deliver_later
      end
    end
    redirect_to admin_index_path
  end
end