class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.decimal :max_rent
      t.text :image
      t.timestamps
    end
  end
end
