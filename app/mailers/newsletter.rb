class Newsletter < ApplicationMailer

  # weekly email newsletter for teams
  def weekly_mailer(team)
    @top_users = User.joins(:donations).group('users.id').order('sum(donations.amount) desc').limit(10)
    @top_teams = Team.order('amount_raised desc').limit(10)
    @team = team
    @users = @team.users.pluck(:email)
    date_range = Date.today.beginning_of_week..Date.today.end_of_week
    @events = Event.where(date_time: date_range).all
    mail(to: @users, subject: "Weekly Update - #{@team.name}")
  end

  # tester for mailer
  def test_weekly_mailer(team)
    puts "sending emails"
    @top_users = User.joins(:donations).group('users.id').order('sum(donations.amount) desc').limit(10)
    @top_teams = Team.order('amount_raised desc').limit(10)
    @team = team
    @users = @team.users.pluck(:email)
    date_range = Date.today.beginning_of_week..Date.today.end_of_week
    @events = Event.where(date_time: date_range).all
    mail(to: 'laddng12@wfu.edu', subject: "Weekly Update - #{@team.name}", template_name: "weekly_mailer")
  end

end
