class AddHoodsUsersTable < ActiveRecord::Migration
  def change
    create_table :hoods_users, :id => 'false' do |t|
      t.integer :hood_id
      t.integer :user_id
    end
  end
end
