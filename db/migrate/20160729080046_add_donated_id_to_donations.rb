class AddDonatedIdToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :donated_id, :integer
    add_column :donations, :donated_type, :string
  end
end
