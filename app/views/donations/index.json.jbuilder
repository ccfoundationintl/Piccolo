json.array!(@donations) do |donation|
  json.extract! donation, :id, :amount, :donated_id, :donated_type, :is_registration_fee, :is_donation
  json.url donation_url(donation, format: :json)
end
