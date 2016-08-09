after "development:users" do

  puts "Seeding donations..."

  # names
  first_name_array = %w(Nick Joe John Mark Mike Jake Jessie Melissa Ann Caroline Megan Sarah)

  User.all.each do |user|
    rand(7..10).times do
      user.donations.where(
        amount: rand(20..100),
        donor_email: "#{first_name_array.sample}@gmail.com",
        is_donation: true
      ).first_or_create!
    end
  end

  Team.all.each do |team|
    rand(10..15).times do
      team.donations.where(
        amount: rand(20..100),
        donor_email: "#{first_name_array.sample}@gmail.com",
        is_donation: true
      ).first_or_create!
    end
  end
end
