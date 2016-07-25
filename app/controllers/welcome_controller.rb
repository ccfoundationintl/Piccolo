class WelcomeController < ApplicationController
  def index
    @sitename = APP_CONFIG["sitename"];
  end
end
