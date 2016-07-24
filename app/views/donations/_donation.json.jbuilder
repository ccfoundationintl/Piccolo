json.extract! donation, :id, :amount, :is_registration_fee, :is_donation, :donor_email, :created_at, :updated_at
json.url donation_url(donation, format: :json)