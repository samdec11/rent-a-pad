class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.text :image
      t.text :description
      t.string :occupation
      t.integer :sociability
      t.integer :sleep_hours
      t.boolean :is_smoker
      t.string :cooks
      t.string :pets
      t.text :roommate
      t.decimal :max_rent
      t.timestamps
    end
  end
end
