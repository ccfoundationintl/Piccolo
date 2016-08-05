class WelcomeController < ApplicationController
  def index
    @top_10_teams = Team.order('amount_raised desc').limit(10)
    @sponsors = Sponsor.all
  end
end
