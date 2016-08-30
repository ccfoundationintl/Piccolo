# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  bio                    :text
#  class_year             :integer
#  raise_goal             :integer
#  gender                 :string
#  tshirt                 :string
#  admin                  :boolean
#  contact_name           :string
#  contact_number         :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  team_id                :integer
#

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  belongs_to :team
  has_many :donations, as: :donated
  has_many :referrals, dependent: :nullify

  validates :email, presence: {message: "Your email cannot be blank"}, uniqueness: {message: "This email address is already being used"}
  validates :password, presence: {message: "Your password cannot be blank"}, length: {minimum: 8, too_short: "Your password must have at least 8 characters"}, on: :create
  validates :password, length: {minimum: 8, too_short: "Your password must have at least 8 characters"}, on: :update, allow_blank: true
  validates :first_name, presence: {message: "Your first name cannot be blank"}
  validates :last_name, presence: {message: "Your last name cannot be blank"}
  validates :raise_goal, presence: {message: "Set your fundraising goal"}
  validates :gender, presence: {message: "Indicate your gender"}
  validates :tshirt, presence: {message: "Select your t-shirt size"}

  has_attached_file :avatar, styles: { large: "800x800>",  medium: "400x400>", thumb: "100x100>" }, default_url: "/app_icon.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validate :password_complexity, on: :create

  def password_complexity
    if password.present? and not password.match(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[_\W])/)
      errors.add :password, "Your password must include at least one lowercase letter, one uppercase letter, one digit, and one symbol."
    end
  end

  def self.search(query)
    query = query.split.map(&:capitalize).join(' ')
    where("first_name LIKE ? OR last_name LIKE ? OR CONCAT(first_name,' ',last_name) LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end

  accepts_nested_attributes_for :team, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :referrals, reject_if: :all_blank

end
