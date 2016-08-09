after "development:teams" do

  puts "Seeding users..."

  # tshirt sizes
  tshirts = ["Small", "Medium", "Large", "X-Large"]

  # class class_years
  years = [2015, 2016, 2014, 2013, 2012, 2011]

  # bio
  bio = "I have been participating in this event for many years now, and the event gets better every year! Help me reach my goal!"

  User.where(
    email: "hector.carroll@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Hector",
    bio: bio,
    last_name: "Carroll",
    password: "!Ffe00e6ce8ad57748269404e89a7a5445",
    avatar: open("https://randomuser.me/api/portraits/med/men/9.jpg")
  )
  User.where(
    email: "nelson.barnett@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Nelson",
    bio: bio,
    last_name: "Barnett",
    password: "!F76ad09a7f8e5f6fdb0e3b5d772eb76ce",
    avatar: open("https://randomuser.me/api/portraits/med/men/13.jpg")
  )
  User.where(
    email: "louella.may@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Louella",
    bio: bio,
    last_name: "May",
    password: "!Fc3c81d420c82c2d1af9c1290e2a10635",
    avatar: open("https://randomuser.me/api/portraits/med/women/39.jpg")
  )
  User.where(
    email: "kitty.mills@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Kitty",
    bio: bio,
    last_name: "Mills",
    password: "!F46fcb41fb806c7ab820053c014356ba1",
    avatar: open("https://randomuser.me/api/portraits/med/women/48.jpg")
  )
  User.where(
    email: "bruce.ross@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Bruce",
    bio: bio,
    last_name: "Ross",
    password: "!F7f509ff9fdcf2386ee437b364255a417",
    avatar: open("https://randomuser.me/api/portraits/med/men/75.jpg")
  )
  User.where(
    email: "gina.bell@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Gina",
    bio: bio,
    last_name: "Bell",
    password: "!Ff68d744ea0e98633dc1170319afa7266",
    avatar: open("https://randomuser.me/api/portraits/med/women/45.jpg")
  )
  User.where(
    email: "kevin.fuller@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Kevin",
    bio: bio,
    last_name: "Fuller",
    password: "!F4038d419db7894dccd42ed73ae55920e",
    avatar: open("https://randomuser.me/api/portraits/med/men/76.jpg")
  )
  User.where(
    email: "brooklyn.hayes@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Brooklyn",
    bio: bio,
    last_name: "Hayes",
    password: "!Fc40b0ffeca13b9ac5d5337b5095881c8",
    avatar: open("https://randomuser.me/api/portraits/med/women/19.jpg")
  )
  User.where(
    email: "michele.gordon@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Michele",
    bio: bio,
    last_name: "Gordon",
    password: "!Fac4fe8d676e093d14381c110f0cec986",
    avatar: open("https://randomuser.me/api/portraits/med/women/40.jpg")
  )
  User.where(
    email: "bob.wells@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Bob",
    bio: bio,
    last_name: "Wells",
    password: "!F885bb4bb080a608984e9deace388d492",
    avatar: open("https://randomuser.me/api/portraits/med/men/74.jpg")
  )
  User.where(
    email: "martin.coleman@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Martin",
    bio: bio,
    last_name: "Coleman",
    password: "!Fa6a13039cee71765764fee724242a75c",
    avatar: open("https://randomuser.me/api/portraits/med/men/39.jpg")
  )
  User.where(
    email: "nevaeh.andrews@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Nevaeh",
    bio: bio,
    last_name: "Andrews",
    password: "!F90a61070e1deb8b72fa571c282ac3f0e",
    avatar: open("https://randomuser.me/api/portraits/med/women/59.jpg")
  )
  User.where(
    email: "erica.palmer@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Erica",
    bio: bio,
    last_name: "Palmer",
    password: "!Fa44dae68f7d50e2cf2a686a0027780ab",
    avatar: open("https://randomuser.me/api/portraits/med/women/39.jpg")
  )
  User.where(
    email: "hilda.fields@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Hilda",
    bio: bio,
    last_name: "Fields",
    password: "!F60dc9be7a0b29c281128132b4e334fb9",
    avatar: open("https://randomuser.me/api/portraits/med/women/69.jpg")
  )
  User.where(
    email: "addison.shaw@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Addison",
    bio: bio,
    last_name: "Shaw",
    password: "!F69b198eccd2e262507c21926dc07bd0d",
    avatar: open("https://randomuser.me/api/portraits/med/women/79.jpg")
  )
  User.where(
    email: "willie.ramirez@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Willie",
    bio: bio,
    last_name: "Ramirez",
    password: "!F85c2499a9a4efe6ce10f0d5c3894868f",
    avatar: open("https://randomuser.me/api/portraits/med/women/4.jpg")
  )
  User.where(
    email: "alfred.duncan@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Alfred",
    bio: bio,
    last_name: "Duncan",
    password: "!Ff1830020eab71e129ecc99db961dc7bf",
    avatar: open("https://randomuser.me/api/portraits/med/men/41.jpg")
  )
  User.where(
    email: "diana.dunn@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Diana",
    bio: bio,
    last_name: "Dunn",
    password: "!Fe88e1dbe8383401c6e16531f4a282f9e",
    avatar: open("https://randomuser.me/api/portraits/med/women/27.jpg")
  )
  User.where(
    email: "andre.day@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Andre",
    bio: bio,
    last_name: "Day",
    password: "!F11b3361c4ad2c2af5a1e2cb6a592cb0d",
    avatar: open("https://randomuser.me/api/portraits/med/men/94.jpg")
  )
  User.where(
    email: "jason.bennett@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Jason",
    bio: bio,
    last_name: "Bennett",
    password: "!F77a93fb72dfedd1e8fdf1ebdaf7da191",
    avatar: open("https://randomuser.me/api/portraits/med/men/5.jpg")
  )
  User.where(
    email: "jeffrey.torres@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Jeffrey",
    bio: bio,
    last_name: "Torres",
    password: "!F69e1c227286918ba5166b1629fa006aa",
    avatar: open("https://randomuser.me/api/portraits/med/men/41.jpg")
  )
  User.where(
    email: "christy.snyder@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Christy",
    bio: bio,
    last_name: "Snyder",
    password: "!Fbf2474896b51c79699fb588b678b51df",
    avatar: open("https://randomuser.me/api/portraits/med/women/29.jpg")
  )
  User.where(
    email: "doris.shelton@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Doris",
    bio: bio,
    last_name: "Shelton",
    password: "!Fe9eb330ddfa6b7e8f4d4c93685cd1150",
    avatar: open("https://randomuser.me/api/portraits/med/women/92.jpg")
  )
  User.where(
    email: "cassandra.edwards@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Cassandra",
    bio: bio,
    last_name: "Edwards",
    password: "!F9d7a48ef35ab308dfeb1d8b9c643996b",
    avatar: open("https://randomuser.me/api/portraits/med/women/2.jpg")
  )
  User.where(
    email: "amelia.sutton@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Amelia",
    bio: bio,
    last_name: "Sutton",
    password: "!F17bf1414b922b7efb8b54c3aef5aaba8",
    avatar: open("https://randomuser.me/api/portraits/med/women/11.jpg")
  )
  User.where(
    email: "brandon.owens@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Brandon",
    bio: bio,
    last_name: "Owens",
    password: "!F6160d987bc07925e0f36535fe8a71753",
    avatar: open("https://randomuser.me/api/portraits/med/men/1.jpg")
  )
  User.where(
    email: "edward.davidson@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Edward",
    bio: bio,
    last_name: "Davidson",
    password: "!F5204a47f75fdc897db2e9d6d67e91c35",
    avatar: open("https://randomuser.me/api/portraits/med/men/85.jpg")
  )
  User.where(
    email: "harper.martinez@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Harper",
    bio: bio,
    last_name: "Martinez",
    password: "!F87695c11656d76fddc58e30a378632e5",
    avatar: open("https://randomuser.me/api/portraits/med/women/6.jpg")
  )
  User.where(
    email: "arianna.riley@example.com"
  ).first_or_create!(
    gender: "female",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Arianna",
    bio: bio,
    last_name: "Riley",
    password: "!Ff8f15c3817102f09c1cbb555f18b1ed5",
    avatar: open("https://randomuser.me/api/portraits/med/women/27.jpg")
  )
  User.where(
    email: "dustin.kelley@example.com"
  ).first_or_create!(
    gender: "male",
    tshirt: tshirts.sample,
    class_year: years.sample,
    raise_goal: [500, 1000, 2000, 5000].sample,
    team: Team.order("RANDOM()").first,
    contact_name: "John Smith",
    contact_number: "(203)-962-3455",
    first_name: "Dustin",
    bio: bio,
    last_name: "Kelley",
    password: "!F392f1fc27dcb5b683c7f880e3edf502f",
    avatar: open("https://randomuser.me/api/portraits/med/men/33.jpg")
  )
end
