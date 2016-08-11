class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    if params[:search]
      @users = User.search(params[:search])
    else
      @top_6_users = User.joins(:donations).where('donations.is_donation=true').select('users.id, avatar_file_name, first_name, last_name, sum(donations.amount) as total_raised').group('users.id').order('total_raised desc').limit(6)

      @users = User.all.order(last_name: :asc)
      respond_to do |format|
        format.html
        format.csv do
          headers['Content-Disposition'] = "attachment; filename=\"user-list.csv\""
          headers['Content-Type'] ||= 'text/csv'
        end
      end
    end
  end

  def show
    @user = User.find(params[:id])
    @amount_raised_goal = (@user.donations.where(is_donation: true).sum(:amount)/@user.raise_goal)*100
    @donations = @user.donations.where(is_donation: true).order('created_at desc')
    @charge = Donation.new
    @donation_record = Donation.new
    @referral = Referral.new
    @registration_fee = @user.donations.where(is_registration_fee: true).empty?
  end

  def new
    @user = User.new
  end

  def edit
    @teams = Team.all.order('name asc')
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, flash: { success: 'Your profile was created!.'} }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @teams = Team.all
    respond_to do |format|
      if @user.update(user_params)
        sign_in(current_user, :bypass => true)
        format.html { redirect_to @user, notice: 'Your profile was updated.' }
        format.json { render :edit, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was removed.' }
      format.json { head :no_content }
    end
  end

  def set_admin
    @user = User.find(params[:id])
    @user.update_attribute(:admin, params[:value])
    @user.save
    redirect_to @user
  end

  def send_donation_email
    user = User.find(params[:user_id])
    referral_object = Referral.create(email: params[:referral_email], name: params[:referral_name])
    DonationMailer.request_a_donation(referral_object, user).deliver_later
    redirect_to :back, flash: { success: "Your donation request email has been sent."}
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :class_year, :gender, :year, :tshirt, :avatar, :team, :team_id, :raise_goal, :contact_name, :contact_number, :referrals, referrals_attributes: [:name, :email], team_attributes: [:name, :category, :amount_raised])
    end
end
