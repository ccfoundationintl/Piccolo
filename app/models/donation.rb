# == Schema Information
#
# Table name: donations
#
#  id                  :integer          not null, primary key
#  amount              :float
#  is_registration_fee :boolean
#  is_donation         :boolean
#  donor_email         :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Donation < ActiveRecord::Base
end
