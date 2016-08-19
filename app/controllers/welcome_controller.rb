class WelcomeController < ApplicationController
  def index
    @top_10_teams = Team.order('amount_raised desc').limit(10)
    @top_10_users = User.joins(:donations).where('donations.is_donation=true').select('users.id, first_name, last_name, sum(donations.amount) as total_raised').group('users.id').order('total_raised desc').limit(10)
    @sponsors = Sponsor.all
    @donation = Donation.new
  end
end
