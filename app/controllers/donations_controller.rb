class DonationsController < ApplicationController

  # GET /donations
  # GET /donations.json
  def index
    @donation = Donation.new
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    @donation = Donation.new
  end

  # GET /donations/1/edit
  def edit
    @donation = Donation.find(params[:id])
  end

  # GET /donations/registration_fee
  def registration_fee
    @donation = Donation.new
  end

  # POST /donations
  # POST /donations.json
  def create
    if not params[:stripeToken].present?
      donation_record = Donation.create!(donation_params)
      DonationMailer.donation_notification(donation_record).deliver_later
      redirect_to(:back)
    elsif params[:stripeToken].present?
      # determine if the donation is a donation or registration fee
      @description = ""
      if params[:is_donation].present?
        @description = "Wake \'N Shake Donation"
      elsif params[:is_registration_fee].present?
        @description = "Wake \'N Shake Registration Fee"
      end

      # registration fee amount - $20
      @amount = 20

      # if not registration fee, set donation amount
      if params[:donation_amount].present?
        @amount = params[:donation_amount].to_i
      end

      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )

      donation = Stripe::Donation.create(
        customer: customer.id,
        amount: @amount*100,
        description: @description,
        currency: 'usd'
      )

      # associate the donation to a team or dancer
      if params[:donation_type] == "User"
        @dancer = User.find(params[:dancer_id])
        donation_record = @dancer.donations.new(amount: @amount, email: params[:stripeEmail])
        if params[:is_donation].present?
          donation_record.is_donation = true
          donation_record.save
        elsif params[:is_registration_fee].present?
          donation_record.is_registration_fee = true
          donation_record.save
        end
      elsif params[:donation_type] == "Team"
        @team = Team.find(params[:team_id])
        donation_record = @team.donations.new(amount: @amount, email: params[:stripeEmail], is_donation: true)
      elsif params[:donation_type] == "All"
        donation_record = Donation.new(amount: @amount, email: params[:stripeEmail], is_donation: true)
      end

      if donation_record.save
        if donation_record.is_registration_fee.present?
          redirect_to dancer_path(@dancer)
        elsif donation_record.is_donation.present?
          DonationMailer.donation_notification(donation_record).deliver_later
          redirect_to donation_record
        end
      end
    else
      redirect_to root_path
    end
  rescue Stripe::CardError => e
    logger.debug e.message
    redirect_to :back, flash: { error:"#{e.message} Please try again or try another card." }
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    @donation = Donation.find(params[:id])
    if @donation.donated_type == "User"
      @redirect = User.find(@donation.donated_id)
    elsif @donation.donated_type = "Team"
      @redirect = Team.find(@donation.donated_id)
    end
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @redirect, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation = Donation.find(params[:id])
    if @donation.donated_type == "User"
      @redirect = User.find(@donation.donated_id)
    elsif @donation.donated_type = "Team"
      @redirect = Team.find(@donation.donated_id)
    end
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to @redirect, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params.require(:donation).permit(:amount, :donated_id, :donated_type, :is_registration_fee, :is_donation, :stripeEmail, :stripeToken, :email)
    end
end
