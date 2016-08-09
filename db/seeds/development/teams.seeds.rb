after "development:divisions" do
  puts "Seeding teams..."

  require 'csv'

  csv_text = File.read("#{Rails.root}/db/seeds/data/teams.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    team_info = row.to_hash
    division = Division.where(name: team_info["division"]).first
    team = Team.where(
      name: team_info["name"],
      division_id: division.id
    ).first_or_create!
  end

end
