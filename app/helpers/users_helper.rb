module UsersHelper

  def name(user)
    "#{user.first_name} #{user.last_name}"
  end

  def amount_raised(user)
    user.donations.where(is_donation: true).sum(:amount)
  end

end
