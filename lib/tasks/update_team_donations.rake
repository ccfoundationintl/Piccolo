namespace :update_team_donations do
  desc "TODO"
  task update: :environment do
    ActiveRecord::Base.transaction do
      Team.all.each do |team|
        puts "Updating #{team.name} donation amount..."
        @total = 0
        team.users.each do |user|
          @total += user.donations.where(is_donation: true).sum(:amount)
        end
        @total += team.donations.where(is_donation: true).sum(:amount)
        team.update_attribute :amount_raised, @total
      end
    end
  end

end
