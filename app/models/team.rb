# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  division_id :integer
#

class Team < ActiveRecord::Base
  has_many :users
  has_many :donations, as: :donated
  belongs_to :division

  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end
end
