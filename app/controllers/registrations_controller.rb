class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    '/donations/registration_fee'
  end

  def new
    @teams = Team.all.order('name')

    super
  end

  def create
    @teams = Team.all.order('name')

    super

    # Queue up donation emails
    if resource.save
      logger.info "User - #{resource.email} has been created. Queueing up donation emails now..."
      resource.referrals.each_with_index do |referral, index|
        if referral.present?
          DonationMailer.request_a_donation(referral, resource).deliver_later
        end
      end
    end
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :gender, :class_year, :tshirt, :avatar, :team, :team_id, :raise_goal, :contact_name, :contact_number, :referrals, :bio, referrals_attributes: [:name, :email], team_attributes: [:name, :amount_raised, :division_id])
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :gender, :class_year, :tshirt, :avatar, :team, :team_id, :raise_goal, :bio, team_attributes: [:name, :division_id])
  end
end
