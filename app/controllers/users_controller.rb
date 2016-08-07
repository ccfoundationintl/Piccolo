class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
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

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @amount_raised_goal = (@user.charges.where(is_donation: true).sum(:amount)/@user.goal)*100
    @donations = @user.charges.where(is_donation: true).order('created_at desc')
    @charge = Donation.new
    @charge_record = Donation.new
    @registration_fee = @user.charges.where(is_registration_fee: true).empty?
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @teams = Team.all.order('name asc')
  end

  # POST /users
  # POST /users.json
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

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :bio, :class_year, :raise_goal, :gender, :tshirt, :admin, :contact_name, :contact_number)
    end
end
