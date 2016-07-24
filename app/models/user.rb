# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  first_name     :string
#  last_name      :string
#  bio            :text
#  class_year     :integer
#  raise_goal     :integer
#  gender         :string
#  tshirt         :string
#  admin          :boolean
#  contact_name   :string
#  contact_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ActiveRecord::Base
end
