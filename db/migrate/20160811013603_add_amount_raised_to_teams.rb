class AddAmountRaisedToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :amount_raised, :integer
  end
end
