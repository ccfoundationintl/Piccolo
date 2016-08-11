namespace :check_registration_payments do
  desc "TODO"
  task check_and_send: :environment do
    if Date.today.in_time_zone('Eastern Time (US & Canada)').wday.odd?
      User.all.each do |user|
        if user.donations.where(is_registration_fee: true).empty?
          RegistrationReminder.remind_dancer(user).deliver_later
          puts "Reminding #{user.first_name} to pay registration fee"
        end
      end
    end
  end

end
