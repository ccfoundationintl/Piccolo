class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.float :amount
      t.boolean :is_registration_fee
      t.boolean :is_donation
      t.string :donor_email

      t.timestamps null: false
    end
  end
end
