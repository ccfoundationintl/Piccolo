class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.integer :class_year
      t.integer :raise_goal
      t.string :gender
      t.string :tshirt
      t.boolean :admin
      t.string :contact_name
      t.string :contact_number

      t.timestamps null: false
    end
  end
end
