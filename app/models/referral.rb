# == Schema Information
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Referral < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :email, presence: true
end
